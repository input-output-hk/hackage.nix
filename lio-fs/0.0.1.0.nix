{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lio-fs";
          version = "0.0.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Hails team <hails at scs dot stanford dot edu>";
        author = "Hails team";
        homepage = "";
        url = "";
        synopsis = "Labeled File System interface for LIO";
        description = "A very simple file system interface for LIO. Labels are associated\nwith files and directories in the form of extended attributes.  This\nlibrary exposes a simple API for on files and directories that\nabides by information flow control: a label on the file protects its\ncontents, while a directory label protects the containing files'\nattributes (names and labels).\n\nSee \"LIO.FS.TCB\" for a description of the filestore implementation\nand \"LIO.FS.Simple\" for a description of the actual API.\n\nThis library is still under development, use with care.";
        buildType = "Simple";
      };
      components = {
        lio-fs = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.lio
            hsPkgs.xattr
            hsPkgs.SHA
          ];
        };
      };
    }