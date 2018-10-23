{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "sednaDBXML";
        version = "0.1.2.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Eric Jones (ericclaudejones at gmail.com)";
      author = "Eric C. Jones";
      homepage = "";
      url = "";
      synopsis = "Sedna C API XML Binding";
      description = "Sedna native XML database bindings.\nhttp://www.sedna.org/";
      buildType = "Simple";
    };
    components = {
      "sednaDBXML" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.iteratee)
          (hsPkgs.mtl)
        ];
      };
    };
  }