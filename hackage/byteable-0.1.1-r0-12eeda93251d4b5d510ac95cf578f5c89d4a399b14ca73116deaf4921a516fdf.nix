{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "byteable";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-byteable";
      url = "";
      synopsis = "Type class for sequence of bytes";
      description = "Abstract class to manipulate sequence of bytes\n\nThe use case of this class is abstracting manipulation of\ntypes that are just wrapping a bytestring with stronger and\nmore meaniful name.\n\nUsual definition of those types are of the form: newtype MyType = MyType ByteString";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }