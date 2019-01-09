{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cassava-embed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "https://github.com/typeable/cassava-embed#readme";
      url = "";
      synopsis = "CSV-file embedding library";
      description = "@cassava-embed@ helps to embed CSV-file using TemplateHaskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cassava)
            (hsPkgs.template-haskell)
            ] ++ (pkgs.lib).optionals (flags.build-examples) (if compiler.isGhc && (compiler.version).lt "8.0.1"
            then [ (hsPkgs.cassava-embed) (hsPkgs.th-lift) ]
            else [ (hsPkgs.cassava-embed) ]);
          };
        };
      };
    }