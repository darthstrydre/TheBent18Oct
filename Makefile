.PHONY: clean All

All:
	@echo "----------Building project:[ Cryptic - Release ]----------"
	@cd "Cryptic" && "$(MAKE)" -f  "Cryptic.mk"
clean:
	@echo "----------Cleaning project:[ Cryptic - Release ]----------"
	@cd "Cryptic" && "$(MAKE)" -f  "Cryptic.mk" clean
