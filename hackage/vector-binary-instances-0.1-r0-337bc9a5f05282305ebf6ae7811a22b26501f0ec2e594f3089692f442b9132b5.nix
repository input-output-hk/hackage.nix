{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "vector-binary-instances"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/binary-vector-instances";
      url = "";
      synopsis = "Instances of Data.Binary and Data.Serialize for vector";
      description = "Instances for Binary for the types defined in the vector package,\nmaking it easy to serialize vectors to and from disk. We use the\ngeneric interface to vectors, so all vector types are supported.\n\nTo serialize a vector:\n\n> *Data.Vector.Binary> let v = Data.Vector.fromList [1..10]\n> *Data.Vector.Binary> v\n> fromList [1,2,3,4,5,6,7,8,9,10] :: Data.Vector.Vector\n> *Data.Vector.Binary> encode v\n> Chunk \"\\NUL\\NUL\\NUL\\NUL\\NUL...\\NUL\\NUL\\NUL\\t\\NUL\\NUL\\NUL\\NUL\\n\" Empty\n\nWhich you can in turn compress before writing to disk:\n\n> compress . encode \$ v\n> Chunk \"\\US\\139\\b\\NUL\\NUL\\N...\\229\\240,\\254:\\NUL\\NUL\\NUL\" Empty";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          ];
        };
      };
    }