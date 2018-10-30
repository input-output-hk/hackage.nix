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
        name = "aws-lambda";
        version = "0.1.0.1";
      };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2014 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling";
      homepage = "https://github.com/alephcloud/hs-aws-lambda";
      url = "";
      synopsis = "Haskell bindings for AWS Lambda";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.aeson)
          (hsPkgs.aws-general)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.lens-action)
          (hsPkgs.lens-aeson)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.wreq)
          (hsPkgs.zip-archive)
        ];
      };
    };
  }