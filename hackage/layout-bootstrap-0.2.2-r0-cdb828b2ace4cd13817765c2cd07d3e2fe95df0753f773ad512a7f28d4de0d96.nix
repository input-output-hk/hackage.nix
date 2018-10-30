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
      specVersion = "1.6";
      identifier = {
        name = "layout-bootstrap";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dp_wiz <aenor.realm@gmail.com>";
      author = "dp_wiz";
      homepage = "https://bitbucket.org/dpwiz/layout-bootstrap";
      url = "";
      synopsis = "Template and widgets for Bootstrap2 to use with Text.Blaze.Html5";
      description = "Template and widgets for Bootstrap2 to use with Text.Blaze.Html5.\nPackage provides some shortcuts to hide classes and structure\nrequired for correct styling of elements and focus on a structure.\nSince Blaze.Html is used mostly with HappStack package provides\nsome basic form processing (and dependencies).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
        ];
      };
    };
  }