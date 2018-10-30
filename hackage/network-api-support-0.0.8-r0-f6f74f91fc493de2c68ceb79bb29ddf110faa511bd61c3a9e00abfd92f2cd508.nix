{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-api-support";
        version = "0.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mark Hibberd";
      maintainer = "Mark Hibberd <mark@hibberd.id.au>";
      author = "Mark Hibberd <mark@hibberd.id.au>";
      homepage = "https://github.com/apiengine/network-api-support";
      url = "";
      synopsis = "Toolkit for building http client libraries over Network.Http.Conduit";
      description = "Toolkit for building http client libraries over Network.Http.Conduit.\n\n/Note/: This library is under heavy development, currently\nthe library is functional but undocumented. Examples of use\ncan be found in the pin and postmark client libraries.\nBasically expect improvements and change.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.certificate)
          (hsPkgs.failure)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.transformers)
        ];
      };
    };
  }