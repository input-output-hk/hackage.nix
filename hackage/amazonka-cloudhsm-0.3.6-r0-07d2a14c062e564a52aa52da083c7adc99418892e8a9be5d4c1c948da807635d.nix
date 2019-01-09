{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-cloudhsm"; version = "0.3.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudHSM SDK.";
      description = "The AWS CloudHSM service helps you meet corporate, contractual and regulatory\ncompliance requirements for data security by using dedicated Hardware\nSecurity Module (HSM) appliances within the AWS cloud. With CloudHSM, you\ncontrol the encryption keys and cryptographic operations performed by the HSM.\n\n/See:/ <http://docs.aws.amazon.com/cloudhsm/latest/dg/welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      };
    }