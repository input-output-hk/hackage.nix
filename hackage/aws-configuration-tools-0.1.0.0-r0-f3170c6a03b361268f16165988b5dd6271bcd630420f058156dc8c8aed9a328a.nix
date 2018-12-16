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
        name = "aws-configuration-tools";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2013-2015 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Lars Kuhtz & Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "Configuration types, parsers & renderers for AWS services";
      description = "Configuration types, parsers & renderers for AWS services, using configuration-tools.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.configuration-tools)
          (hsPkgs.aws)
          (hsPkgs.aws-kinesis)
          (hsPkgs.aws-general)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }