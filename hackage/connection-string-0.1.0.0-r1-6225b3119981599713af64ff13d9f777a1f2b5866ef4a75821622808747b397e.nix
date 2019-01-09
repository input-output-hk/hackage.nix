{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "connection-string"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 George Pollard";
      maintainer = "George Pollard <porges@porg.es>";
      author = "George Pollard <porges@porg.es>";
      homepage = "https://github.com/Porges/connection-string-hs";
      url = "";
      synopsis = "A library for parsing connection strings.";
      description = "Parses connection strings in a manner that agrees with\nthe format that .NET accepts (e.g. ADO.NET).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.parser-combinators)
          ];
        };
      tests = {
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.text) ];
          };
        };
      };
    }