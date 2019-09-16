package com.itn.roomfinders.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.service.RoomService;

@Controller
public class SearchController {
	@Autowired
	private RoomService roomService;

	//@Autowired

	//private SearchService searchService;

	

	@GetMapping("/search")

	public String filter( Model model,

			@RequestParam(value = "type", defaultValue="none") String type,

			@RequestParam(value = "price", defaultValue="0.0") double price,

			@RequestParam(value = "status", defaultValue="none") String status

			) {

		

		Room room = new Room();

		room.setType(type);

		//room.setPrice(price);

		room.setStatus(status);

		

		List<Room> rooms = new ArrayList<Room>();

		if(!room.getType().equals("none")) {

			rooms.addAll(roomService.findRoomByType(type));

		}

		

		if(!room.getStatus().equals("none")) {

			rooms.addAll(roomService.getAvailableRoom(Sort.by(Sort.Direction.DESC, "date")));

		}

		

		model.addAttribute("roomlist", rooms);

		

		

		return "search";

	}

}
