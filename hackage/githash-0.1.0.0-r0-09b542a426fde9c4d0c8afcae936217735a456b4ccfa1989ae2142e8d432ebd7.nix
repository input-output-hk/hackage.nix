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
        name = "githash";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Adam C. Foltzer";
      homepage = "https://github.com/snoyberg/githash#readme";
      url = "";
      synopsis = "Compile git revision info into Haskell projects";
      description = "Please see the README and documentation at <https://www.stackage.org/package/githash>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "githash-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.githash)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }