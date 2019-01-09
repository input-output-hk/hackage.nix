{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "follow-file"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "";
      homepage = "https://github.com/athanclark/follow-file#readme";
      url = "";
      synopsis = "Be notified when a file gets appended, solely with what was added. Warning - only works on linux and for files that are strictly appended, like log files.";
      description = "Please see the README on Github at <https://github.com/athanclark/follow-file#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-path)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.hinotify)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          ];
        };
      exes = {
        "follow-file" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-path)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.follow-file)
            (hsPkgs.hinotify)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.path)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }