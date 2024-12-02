#include <stdio.h>

int binary_search(int arr[],int size,int target)
{
	int left = 0, right = size - 1;
	while (left <= right)
	{
		int mid = left + ( right - left) / 2;
		if (arr[mid] == target)
			return mid;          //to specify that target founded
		else if (arr[mid] < target)
			left = mid + 1;      //search in the right half
		else right = mid -1;         //search in the left half
	}return -1; //to specify that target not founded	
}
int main()
{
	int arr[] = {2,4,6,8,10};
	int size = sizeof(arr)/sizeof(arr[0]);
	int target =8;
	int result = binary_search(arr, size, target);
	if (result != -1)
		printf("Element found at index %d\n",result);
	else 
		printf("Element was not founded\n");
	return 0;
}
