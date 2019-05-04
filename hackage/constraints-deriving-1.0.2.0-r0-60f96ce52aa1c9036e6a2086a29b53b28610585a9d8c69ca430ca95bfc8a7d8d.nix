{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { constraints = false; debug = false; examples = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "constraints-deriving"; version = "1.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Artem Chirkin";
      maintainer = "achirkin@users.noreply.github.com";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/constraints-deriving#readme";
      url = "";
      synopsis = "Manipulating constraints and deriving class instances programmatically.";
      description = "The library provides a plugin to derive class instances programmatically. Please see the README on GitHub at <https://github.com/achirkin/constraints-deriving#readme>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          ] ++ (pkgs.lib).optional (flags.constraints) (hsPkgs.constraints);
        };
      exes = {
        "deriving-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.constraints-deriving) ];
          };
        };
      tests = {
        "functional-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.constraints-deriving)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.path)
            (hsPkgs.path-io)
            ];
          };
        };
      };
    }