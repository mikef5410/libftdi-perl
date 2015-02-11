
use ExtUtils::MakeMaker;
WriteMakefile(
     'NAME' => 'FTDI',            # Name of your module
     'LIBS' => ['-lftdi1', '-lusb' ],             # Custom libraries (if any)
     'INC' => '-I/usr/include/libftdi1 -I. -I/usr/include/libusb-1.0' ,
     'OPTIMIZE' => '-O1 -g',
     'OBJECT' => 'ftdi_wrap.o'    # Object files
);
