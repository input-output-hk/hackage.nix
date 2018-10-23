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
        version = "0.0.4.0";
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
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.wreq)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "shc" = {
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
        "shc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stack-hpc-coveralls)
            (hsPkgs.hspec)
            (hsPkgs.hspec-contrib)
            (hsPkgs.HUnit)
            (hsPkgs.hpc)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.aeson)
            (hsPkgs.time)
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