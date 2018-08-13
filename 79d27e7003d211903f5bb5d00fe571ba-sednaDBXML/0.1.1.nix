{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "sednaDBXML";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Eric Jones (ericclaudejones at gmail.com)";
      author = "Eric C. Jones";
      homepage = "";
      url = "";
      synopsis = "Sedna Native XML Binding";
      description = "Sedna is a free native XML developed by the Institute for\nSystem Programming RAS database. Sedna\nprovides a full range of core database\nservices - persistent storage, ACID\ntransactions, security, indices, hot\nbackup. Flexible XML processing facilities\ninclude W3C XQuery implementation, tight\nintegration of XQuery with full-text search\nfacilities and a node-level update\nlanguage. This package provides language\nbindings and (will) provide a clean, sensible\nmonadic interface to the (established)\nunderlying C library.\nSedna Home Page:\nhttp://www.sedna.org/";
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
        libs = [ (pkgs.sedna) ];
      };
    };
  }