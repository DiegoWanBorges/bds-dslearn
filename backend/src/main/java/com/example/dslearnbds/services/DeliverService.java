package com.example.dslearnbds.services;

import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dslearnbds.entities.Deliver;
import com.example.dslearnbds.entities.dto.DeliverRevisionDTO;
import com.example.dslearnbds.observers.DeliverRevisionObserver;
import com.example.dslearnbds.repositories.DeliverRepository;

@Service
public class DeliverService {
	@Autowired
	private DeliverRepository repository;
	
	private Set<DeliverRevisionObserver> deliverRevisionObservers = new LinkedHashSet<>();
	
	@Transactional
	public void saveRevision(Long id, DeliverRevisionDTO dto) {
		Deliver deliver = repository.getOne(id);
		deliver.setStatus(dto.getStatus());
		deliver.setFeedback(dto.getFeedback());
		deliver.setCorrectCount(dto.getCorrectCount());
		repository.save(deliver);	
		for (DeliverRevisionObserver observer : deliverRevisionObservers) {
			observer.onSaveRevision(deliver);
		}
		
	}
	
	public void subscribeDeliverRevisionObserver(DeliverRevisionObserver observer) {
		deliverRevisionObservers.add(observer);
	}

}
