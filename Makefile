.PHONY: clean All

All:
	@echo "----------Building project:[ Queens - Release ]----------"
	@cd "Queens" && "$(MAKE)" -f  "Queens.mk"
clean:
	@echo "----------Cleaning project:[ Queens - Release ]----------"
	@cd "Queens" && "$(MAKE)" -f  "Queens.mk" clean
