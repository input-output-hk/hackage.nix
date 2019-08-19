{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "to"; version = "1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom Kazak <artyom@aelve.com>";
      author = "Artyom Kazak";
      homepage = "https://github.com/aelve/to";
      url = "";
      synopsis = "Simple, safe, boring type conversions";
      description = "`to` contains type conversions for popular Haskell types. All provided\nconversions are safe and boring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          ];
        };
      benchmarks = {
        "benches" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.gauge)
            ];
          };
        };
      };
    }