package process_test;

public class test {

	public String[][] partlist() {
		// TODO Auto-generated method stub
		String[][] partlist_table = {{"부품명","제조사 추천 교체 일시","AI 추천 교체 일시","실제 교체 일시","누적 교체 일시","부품 별 매뉴얼"},
				{"자이로","30일","2020.07.16","28일","5","매뉴얼"}};
		System.out.println("메서드 실행");
		//부품명, 제조사 추천 교체일시, AI 추천 교체 일시, 실제 교체일시, 누적 교체 횟수, 부품 별 매뉴얼
		return partlist_table;
	}

}
