{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "readpyc"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bernie Pope <florbitous@gmail.com>";
      author = "Bernie Pope";
      homepage = "https://github.com/bjpop/blip";
      url = "";
      synopsis = "Read and pretty print Python bytecode (.pyc) files.";
      description = "Read and pretty print Python bytecode (.pyc) files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "readpyc" = {
          depends = [ (hsPkgs.base) (hsPkgs.bliplib) (hsPkgs.parseargs) ];
          };
        };
      };
    }