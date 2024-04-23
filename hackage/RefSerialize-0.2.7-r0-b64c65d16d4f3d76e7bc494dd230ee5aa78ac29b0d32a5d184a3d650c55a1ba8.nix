{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "RefSerialize"; version = "0.2.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Write to and read from Strings maintaining internal memory references";
      description = "Read, Show and Data.Binary do not check for internal data references to the same address.\nAs a result, the data is duplicated when serialized. This is a waste of space in the filesystem\nand  also a waste of serialization time. but the worst consequence is that, when the serialized data is read,\nit allocates multiple copies for the same object when referenced multiple times. Because multiple referenced\ndata is very typical in a pure language such is Haskell, this means that the resulting data loose the beatiful\neconomy of space and processing time that referential transparency permits.\n\nEvery instance of Show/Read can be an instance of Data.RefSerialize.\n\nThis package allows the serialization and deserialization of large data structures without duplication of data, with\nthe result of optimized performance and memory usage. Since the serialized data is also human readable, It is also\nuseful for debugging purposes.\n\nThe deserializer contains a subset of Parsec.Token for defining deserializing parsers.\n\nthe serialized string has the form:\n\n@expr( var1, ...varn) where  var1=value1,..valn=valueN @\n\nso that the string can agree with the haskell syntax.\n\nSee demo.hs and tutorial.\n\nin this release:\n\n*  bug in 0.2.5 corrected: empty lists were written with two indirections (insertVar . insertVar). That caused an error in readp\n\n*  bug in 0.2.6 corrected for lists\n\n*  removed the problematic instance (Show a, Read a) => Serialize a\n\n*  Added   instances for standard datatypes. More \"deeper\" instances favouring more variable usage\n\n*  instance of Serialize [a] changed\n\nTo do:\n\n-derived instances for Data.Binary\n\n-serialization to/from ByteStings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }