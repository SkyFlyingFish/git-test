incl_path = ./include

target = test/fdfs_upload_file_test

apps:$(target)

test/fdfs_upload_file_test:test/fdfs_upload_file_test.c test/make_log.c
	gcc $^ -o $@ -I $(incl_path)


.PHONEY:clean

clean:
	-rm -f $(target)