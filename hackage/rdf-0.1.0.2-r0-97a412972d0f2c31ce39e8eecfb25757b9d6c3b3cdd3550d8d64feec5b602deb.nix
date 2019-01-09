{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rdf"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "Travis Whitaker 2016";
      maintainer = "pi.boy.travis@gmail.com";
      author = "Travis Whitaker";
      homepage = "https://github.com/traviswhitaker/rdf";
      url = "";
      synopsis = "Representation and Incremental Processing of RDF Data";
      description = "Data structures, parsers, and encoders for RDF data sets based on the\nRDF 1.1 abstract syntax and RFC 3987. The interface is intended to support\nincremental graph processing in constant space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.fgl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      benchmarks = {
        "bench-rdf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.rdf)
            (hsPkgs.text)
            ];
          };
        };
      };
    }