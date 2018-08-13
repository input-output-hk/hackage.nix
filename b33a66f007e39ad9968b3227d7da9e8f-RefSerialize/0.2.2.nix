{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "RefSerialize";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Write to and read from Strings maintaining internal memory references";
      description = "Read, Show and Data.Binary do not check for pointers to the same address\nas a result, the data is duplicated when serialized. This is a waste of space in the filesystem\nand  also a waste of serialization time. but the worst consequence is that, when the serialized data is read,\nit allocates multiple copies for the same object referenced multiple times. Because multiple referenced\ndata is very typical in a pure language such is Haskell, this means that the resulting data loose the beatiful\neconomy of space and processing time that referential transparency permits.\nThis package allows the serialization and deserialization of large data structures without duplication of data, with\nthe result of optimized performance and memory usage. It is also useful for debugging purposes.\nThere are automatic derived instances for instances of Read/Show. Lists of non-chars have its own instance.\nThe deserializer contains a subset of Parsec.Token for defining deserializing parsers.\nEvery instance of Show/Read is also a instance of Data.RefSerialize\nthe serialized string has the form \"expr( var1, ...varn) where  var1=value1,..valn=valueN \" so that the\nstring can ve EVALuated. So the entire deserialization can be substituted by eval.\nSee demo.hs and tutorial. I presumably will add a entry in haskell-web.blogspot.com\nTo develop: -derived instances for Data.Binary\n-serialization to/from ByteStings";
      buildType = "Simple";
    };
    components = {
      "RefSerialize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }