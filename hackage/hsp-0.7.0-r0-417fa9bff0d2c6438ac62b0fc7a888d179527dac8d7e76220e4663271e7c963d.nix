{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hsp"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <niklas.broberg@gmail.com>";
      author = "Niklas Broberg, Joel Bjornson";
      homepage = "http://patch-tag.com/r/nibro/hsp";
      url = "";
      synopsis = "Haskell Server Pages is a library for writing dynamic server-side web pages.";
      description = "Haskell Server Pages (HSP) is an extension of vanilla Haskell, targetted at the task of\nwriting dynamic server-side web pages. Features include:\n\n* Embedded XML syntax\n\n* A (low-to-mid-level) programming model for writing dynamic web pages\n\n* A cgi-handler utility (as a separate package, hsp-cgi)\n\nFor details on usage, please see the website, and the author's thesis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.harp)
          (hsPkgs.hsx)
          (hsPkgs.HJScript)
          (hsPkgs.text)
          ] ++ [ (hsPkgs.base) ];
        };
      };
    }