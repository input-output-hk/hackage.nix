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
      specVersion = "1.10";
      identifier = {
        name = "follow-file";
        version = "0.0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Be notified when a file gets appended, solely with what was added.";
      description = "See module for docs";
      buildType = "Simple";
    };
    components = {
      "follow-file" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-path)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.hinotify)
          (hsPkgs.path)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "follow-file" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.follow-file)
            (hsPkgs.path)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-path)
            (hsPkgs.hinotify)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }