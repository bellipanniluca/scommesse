package com.scommesse.pugbet.model;

public interface SchedinaRepository {
	
	public void addToSchedina(Schedina s,Giocata g);
	public void removeFromSchedina(Schedina s,Giocata g);
	public void emptySchedina(Schedina s);
	public void confirm(Schedina s);

}
