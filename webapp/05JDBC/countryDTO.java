package JDBC;

public class countryDTO {
	private String Code;
	private String Name;
	private String Continent;
	private int Population;
	
	public countryDTO() {
		
	}
	public countryDTO(String code, String name, String continent, int population) {
		super();
		Code = code;
		Name = name;
		Continent = continent;
		Population = population;
	}
	public String getCode() {
		return Code;
	}
	public void setCode(String code) {
		Code = code;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getContinent() {
		return Continent;
	}
	public void setContinent(String continent) {
		Continent = continent;
	}
	public int getPopulation() {
		return Population;
	}
	public void setPopulation(int population) {
		Population = population;
	}
	@Override
	public String toString() {
		return "countryDTO [Code=" + Code + ", Name=" + Name + ", Continent=" + Continent + ", Population=" + Population
				+ "]";
	}
	
	
	
}
