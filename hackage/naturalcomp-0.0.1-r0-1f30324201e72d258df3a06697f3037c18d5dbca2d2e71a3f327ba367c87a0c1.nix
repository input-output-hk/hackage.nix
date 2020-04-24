{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { filepath = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "naturalcomp"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hironao Komatsu <hirkmt@gmail.com>";
      author = "Hironao Komatsu";
      homepage = "not yet available";
      url = "";
      synopsis = "Natural-order string comparison";
      description = "Natural order string comparison is needed when e.g. one wants\nto compare file names or strings of software version.  It's\naimed to be compatible to glibc's strverscmp() function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (flags.filepath) (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"));
        buildable = true;
        };
      };
    }