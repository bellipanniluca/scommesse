package com.scommesse.pugbet.model;

public class SchedinaImpl implements SchedinaRepository {

	@Override
	public void addToSchedina(Schedina s, Giocata g) {

		s.add(g);

	}

	@Override
	public void removeFromSchedina(Schedina s, Giocata g) {
		
		s.getListaGiocate().remove(g);

	}

	@Override
	public void emptySchedina(Schedina s) {
		s.getListaGiocate().clear();

	}

	@Override
	public void confirm(Schedina s) {
		
		

	}

}
