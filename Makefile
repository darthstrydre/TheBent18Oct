.PHONY: clean All

All:
	@echo "----------Building project:[ Cryptic - Debug ]----------"
	@cd "Cryptic" && "$(MAKE)" -f  "Cryptic.mk"
clean:
	@echo "----------Cleaning project:[ Cryptic - Debug ]----------"
	@cd "Cryptic" && "$(MAKE)" -f  "Cryptic.mk" clean
