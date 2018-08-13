{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bash";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/bash";
      url = "";
      synopsis = "Bash generation library.";
      description = "A library for generation of Bash scripts, handling escaping, statement\ngrouping and expression formation at a high level.\n\nThe top-level module, Language.Bash, is all you need to import to access the\npackage's functionality. The module Language.Bash.Lib contains some\nexamples, as does the test script, tests.bash, included with the source\ndistribution.";
      buildType = "Simple";
    };
    components = {
      "bash" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.shell-escape)
          (hsPkgs.binary)
          (hsPkgs.hxt-regex-xmlschema)
          (hsPkgs.mtl)
          (hsPkgs.SHA)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }