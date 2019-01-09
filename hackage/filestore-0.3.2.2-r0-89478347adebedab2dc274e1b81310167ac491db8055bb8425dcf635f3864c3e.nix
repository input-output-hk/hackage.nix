{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { maxcount = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "filestore"; version = "0.3.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Gwern Branwen, Sebastiaan Visser";
      homepage = "http://johnmacfarlane.net/repos/filestore";
      url = "";
      synopsis = "Interface for versioning file stores.";
      description = "The filestore library provides an abstract interface for a versioning\nfile store, and modules that instantiate this interface.  Currently\nonly Git & Darcs modules are provided, but other VCSs or databases could be\nadded.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.datetime)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.datetime)
          (hsPkgs.regex-posix)
          (hsPkgs.xml)
          (hsPkgs.split)
          (hsPkgs.Diff)
          ];
        };
      };
    }