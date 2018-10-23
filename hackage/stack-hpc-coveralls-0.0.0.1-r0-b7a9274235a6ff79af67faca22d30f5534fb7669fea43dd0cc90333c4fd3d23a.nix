{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "stack-hpc-coveralls";
        version = "0.0.0.1";
      };
      license = "ISC";
      copyright = "Copyright (c) 2015 Michele Lacchia";
      maintainer = "michelelacchia@gmail.com";
      author = "Michele Lacchia";
      homepage = "http://github.com/rubik/stack-hpc-coveralls";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "stack-hpc-coveralls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hpc)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.wreq)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "stack-hpc-coveralls" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.docopt)
            (hsPkgs.stack-hpc-coveralls)
          ];
        };
      };
      tests = {
        "stack-hpc-coveralls-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stack-hpc-coveralls)
            (hsPkgs.hspec)
          ];
        };
        "style" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }