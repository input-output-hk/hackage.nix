{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tailfile-hinotify"; version = "2.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "diaz.carrete@facebook.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Tail files in Unix, using hinotify.";
      description = "Tail files in Unix, using hinotify.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hinotify)
          (hsPkgs.bytestring)
          (hsPkgs.async)
          (hsPkgs.foldl)
          (hsPkgs.streaming)
          (hsPkgs.pipes)
          (hsPkgs.streaming-eversion)
          (hsPkgs.text)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hinotify)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.foldl)
            (hsPkgs.streaming)
            (hsPkgs.pipes)
            (hsPkgs.pipes-transduce)
            (hsPkgs.streaming-eversion)
            (hsPkgs.directory)
            (hsPkgs.conceit)
            (hsPkgs.process-streaming)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            ];
          };
        };
      };
    }