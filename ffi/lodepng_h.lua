local ffi = require("ffi")

ffi.cdef[[
enum LodePNGColorType {
  LCT_GREY = 0,
  LCT_RGB = 2,
  LCT_PALETTE = 3,
  LCT_GREY_ALPHA = 4,
  LCT_RGBA = 6,
};
typedef enum LodePNGColorType LodePNGColorType;
unsigned int lodepng_decode32_file(unsigned char **, unsigned int *, unsigned int *, const char *);
unsigned int lodepng_decode32(unsigned char **, unsigned int *, unsigned int *, const unsigned char *, size_t);
unsigned int lodepng_decode24_file(unsigned char **, unsigned int *, unsigned int *, const char *);
unsigned int lodepng_decode24(unsigned char **, unsigned int *, unsigned int *, const unsigned char *, size_t);
unsigned int lodepng_decode_memory(unsigned char **, unsigned int *, unsigned int *, const unsigned char *, size_t, LodePNGColorType, unsigned int);
unsigned int lodepng_decode_file(unsigned char **, unsigned int *, unsigned int *, const char *, LodePNGColorType, unsigned int);
]]