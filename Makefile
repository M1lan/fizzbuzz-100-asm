AS = nasm
LD = ld
ASFLAGS = -f elf32
LDFLAGS = -m elf_i386

TARGET = fizzbuzz-100
OBJECTS = fizzbuzz-100.o

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $(TARGET) $(OBJECTS)

fizzbuzz-100.o: fizzbuzz-100.asm
	$(AS) $(ASFLAGS) fizzbuzz-100.asm -o fizzbuzz-100.o

clean:
	rm -f $(TARGET) $(OBJECTS)
