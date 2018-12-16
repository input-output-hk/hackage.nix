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
        name = "setdown";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Robert Massaioli";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "http://bitbucket.org/robertmassaioli/setdown";
      url = "";
      synopsis = "Treating files as sets to perform rapid set manipulation.";
      description = "There will be times when you have lots of set data and you want to perform many\nset operations quickly and reliably, you will also want to be able to add new\ndata to your set operations and be able to run the same set operations with\nlittle effort. This is the problem that setdown aims to solve. Setdown was\nbuilt with the intention that you would use it in conjunction with version\ncontrol tools to manage your set data and set description file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "setdown" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.uuid)
            (hsPkgs.split)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }