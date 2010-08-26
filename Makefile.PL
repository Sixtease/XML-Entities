use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'XML::Entities',
    AUTHOR              => 'Oldřich Krůza <Oldrich.Kruza@sixtease.net>',
    VERSION_FROM        => 'lib/XML/Entities.pm',
    ABSTRACT_FROM       => 'lib/XML/Entities.pm',
    LICENSE             => 'perl',
    PM                  => {
        'lib/XML/Entities.pm'       => '${INST_LIBDIR}/Entities.pm',
        'lib/XML/Entities/Data.pm'  => '${INST_LIBDIR}/Entities/Data.pm',
        'lib/XML/Entities/Data.pod' => '${INST_LIBDIR}/Entities/Data.pod',
    },
    PL_FILES            => {
        # download entities             and output to this file
        'bin/download-entities.pl' => 'lib/XML/Entities/Data.pm',
    },
    EXE_FILES           => [ 'bin/download-entities.pl' ],
    MAN3PODS            => {
        'lib/XML/Entities.pm'       => '${INST_MAN3DIR}/XML::Entities.3pm',
        'lib/XML/Entities/Data.pod' => '${INST_MAN3DIR}/XML::Entities::Data.3pm',
    },
    PREREQ_PM           => {
        'Carp'           => 0,
        'Test::More'     => 0,
        'File::Basename' => 0,
        'LWP::UserAgent' => 0,
        'Fatal'          => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'XML-Entities-* lib/XML/Entities/Data.pm' },
);
