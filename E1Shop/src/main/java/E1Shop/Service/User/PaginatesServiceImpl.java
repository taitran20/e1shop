package E1Shop.Service.User;

import org.springframework.stereotype.Service;

import E1Shop.Dto.PaginatesDto;

@Service
public class PaginatesServiceImpl {
	public PaginatesDto GetInfoPaginates(int totalData,int limit,int currentPage) {
		PaginatesDto page = new PaginatesDto();
		page.setLimit(limit);
		page.setTotalPage(SetInfoTotalData(totalData, limit));
		page.setCurrentPage(CheckCurrentPage(currentPage, page.getTotalPage()));
		
		int start = FindStart(page.getCurrentPage(), limit);
		page.setStart(start);
		int end = FindEnd(page.getStart(), limit, totalData);
		page.setEnd(end);
		return page;
	}

	private int FindEnd(int start, int limit, int totalData) {
		// TODO Auto-generated method stub
		return start + limit > totalData? totalData :(start + limit) - 1;
	}

	private int FindStart(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return ((currentPage-1)*limit)+1;
	}

	private int SetInfoTotalData(int totalData, int limit) {
		// TODO Auto-generated method stub
		int totalPage = 0;
		totalPage = totalData/limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}
	
	public int CheckCurrentPage(int currentPage, int totalPage) {
		if(currentPage < 1) {
			return 1;
		}
		if(currentPage > totalPage) {
			return totalPage;	
		}
		
		return currentPage;
	}
}
