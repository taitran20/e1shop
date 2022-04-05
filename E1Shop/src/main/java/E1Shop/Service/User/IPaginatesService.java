package E1Shop.Service.User;

import org.springframework.stereotype.Service;

import E1Shop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {

	public PaginatesDto GetInfoPaginates(int totalData,int limit,int currentPage);
}
