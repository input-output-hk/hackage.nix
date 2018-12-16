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
      specVersion = "1.9";
      identifier = {
        name = "codec-beam";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "h.kofigumbs@gmail.com";
      author = "";
      homepage = "https://github.com/hkgumbs/codec-beam#readme";
      url = "";
      synopsis = "Erlang VM byte code assembler";
      description = "Erlang VM byte code assembler.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.zlib)
          (hsPkgs.text)
        ];
      };
      tests = {
        "codec-beam-tests" = {
          depends = [
            (hsPkgs.codec-beam)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }