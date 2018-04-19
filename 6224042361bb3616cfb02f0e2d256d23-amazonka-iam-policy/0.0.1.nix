{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-iam-policy";
          version = "0.0.1";
        };
        license = "MPL-2.0";
        copyright = "Copyright (c) 2017 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay+amazonka@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka-iam-policy";
        url = "";
        synopsis = "Amazon IAM Policy Document DSL and Combinators.";
        description = "This library provides data types and combinators that allow you to declare,\nencode, and decode the <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html IAM JSON policy>\nlanguage with a modicum of safety, minus any extreme type-level features.\n\nThe IAM policy documents can be safely constructed via the provided datatypes\nand mapped, folded, and traversed via the provided instances, combinators,\nand lenses. The resulting structure can then be encoded as a valid IAM JSON\npolicy document for using with Amazon IAM and related services.\n\nThe details of what goes into a policy vary for each service, depending on what\nactions the service makes available, what types of resources it contains, and\nso on. When you're writing policies for a specific service, it's helpful to see\nexamples of policies for that service. View the\n<https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html AWS Services That Work with IAM> documentation for more information.\n\nSee \"Amazonka.IAM.Policy\" to get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-iam-policy = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.profunctors
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.aeson-pretty
              hsPkgs.amazonka-iam-policy
              hsPkgs.doctest
              hsPkgs.base
            ];
          };
          golden = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.amazonka-iam-policy
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
            ];
          };
        };
      };
    }