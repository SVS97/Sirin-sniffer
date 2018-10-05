TARGET=sniffer

CC=gcc
CFLAGS=-O1

.PHONY: all clean

all tcp:	$(TARGET)

$(TARGET): 
	$(CC) $(CFLAGS) $(addsuffix .c, $(TARGET))  -o $@
	sudo ./sniffer t

all UDP:	$(TARGET)

$(TARGET): 
	$(CC) $(CFLAGS) $(addsuffix .c, $(TARGET))  -o $@
	sudo ./sniffer u




%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	@echo Tidying things up...
	-rm -f $(TARGET)
	-rm -f *.o $(TARGET)

	


