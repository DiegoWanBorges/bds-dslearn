package com.example.dslearnbds.observers;

import com.example.dslearnbds.entities.Deliver;

public interface DeliverRevisionObserver {
	void onSaveRevision(Deliver deliver);
}
