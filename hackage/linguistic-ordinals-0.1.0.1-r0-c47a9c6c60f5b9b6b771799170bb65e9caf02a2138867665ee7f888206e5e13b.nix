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
      specVersion = "1.10";
      identifier = {
        name = "linguistic-ordinals";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Elliot Robinson\n(c) 2014-2015 Argiope Technical Solutions";
      maintainer = "elliot.robinson@argiopetech.com";
      author = "Elliot Robinson";
      homepage = "http://github.com/argiopetech/linguistic-ordinals";
      url = "";
      synopsis = "Express Integral types as linguistic ordinals (1st, 2nd, 3rd, etc)";
      description = "A simple library which provides suffixes for integral values, thereby effectively rendering them ordinal (from a linguistic standpoint).\nSee also <http://en.wikipedia.org/wiki/Ordinal_number_(linguistics) the Wikipedia summary of linguistic ordinals>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
    };
  }