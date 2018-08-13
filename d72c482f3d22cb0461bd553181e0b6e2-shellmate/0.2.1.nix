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
      specVersion = "1.8";
      identifier = {
        name = "shellmate";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "http://github.com/valderman/shellmate";
      url = "";
      synopsis = "Simple interface for shell scripting in Haskell.";
      description = "Aims to simplify development of cross-platform shell scripts and similar things.";
      buildType = "Simple";
    };
    components = {
      "shellmate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.download-curl)
          (hsPkgs.feed)
          (hsPkgs.tagsoup)
          (hsPkgs.xml)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.temporary)
        ];
      };
    };
  }