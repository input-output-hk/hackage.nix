{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hastily";
        version = "0.1.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Sandeep.C.R";
      maintainer = "sandeepcr2@gmail.com";
      author = "Sandeep.C.r";
      homepage = "http://bitbucket.org/sras/hastily";
      url = "";
      synopsis = "A program to download subtitle files.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hastily" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.zip-archive)
          (hsPkgs.directory-tree)
          (hsPkgs.parsec)
          (hsPkgs.concurrent-extra)
          (hsPkgs.unbounded-delays)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hxt)
        ];
      };
      exes = {
        "hastily" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.string-conversions)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.hastily)
          ];
        };
      };
      tests = {
        "hastily-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hastily)
          ];
        };
      };
    };
  }