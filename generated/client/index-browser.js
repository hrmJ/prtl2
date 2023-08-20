
Object.defineProperty(exports, "__esModule", { value: true });

const {
  Decimal,
  objectEnumValues,
  makeStrictEnum,
  Public,
} = require('./runtime/index-browser')


const Prisma = {}

exports.Prisma = Prisma

/**
 * Prisma Client JS version: 4.16.2
 * Query Engine version: 4bc8b6e1b66cb932731fb1bdbbc550d1e010de81
 */
Prisma.prismaVersion = {
  client: "4.16.2",
  engine: "4bc8b6e1b66cb932731fb1bdbbc550d1e010de81"
}

Prisma.PrismaClientKnownRequestError = () => {
  throw new Error(`PrismaClientKnownRequestError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)};
Prisma.PrismaClientUnknownRequestError = () => {
  throw new Error(`PrismaClientUnknownRequestError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.PrismaClientRustPanicError = () => {
  throw new Error(`PrismaClientRustPanicError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.PrismaClientInitializationError = () => {
  throw new Error(`PrismaClientInitializationError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.PrismaClientValidationError = () => {
  throw new Error(`PrismaClientValidationError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.NotFoundError = () => {
  throw new Error(`NotFoundError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.Decimal = Decimal

/**
 * Re-export of sql-template-tag
 */
Prisma.sql = () => {
  throw new Error(`sqltag is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.empty = () => {
  throw new Error(`empty is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.join = () => {
  throw new Error(`join is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.raw = () => {
  throw new Error(`raw is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.validator = Public.validator

/**
* Extensions
*/
Prisma.getExtensionContext = () => {
  throw new Error(`Extensions.getExtensionContext is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.defineExtension = () => {
  throw new Error(`Extensions.defineExtension is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}

/**
 * Shorthand utilities for JSON filtering
 */
Prisma.DbNull = objectEnumValues.instances.DbNull
Prisma.JsonNull = objectEnumValues.instances.JsonNull
Prisma.AnyNull = objectEnumValues.instances.AnyNull

Prisma.NullTypes = {
  DbNull: objectEnumValues.classes.DbNull,
  JsonNull: objectEnumValues.classes.JsonNull,
  AnyNull: objectEnumValues.classes.AnyNull
}

/**
 * Enums
 */

exports.Prisma.TransactionIsolationLevel = makeStrictEnum({
  ReadUncommitted: 'ReadUncommitted',
  ReadCommitted: 'ReadCommitted',
  RepeatableRead: 'RepeatableRead',
  Serializable: 'Serializable'
});

exports.Prisma.BackgroundsScalarFieldEnum = {
  id: 'id',
  filename: 'filename',
  description: 'description'
};

exports.Prisma.BiblesegmentsScalarFieldEnum = {
  id: 'id',
  start_book: 'start_book',
  start_chap: 'start_chap',
  start_verse: 'start_verse',
  end_book: 'end_book',
  end_chap: 'end_chap',
  end_verse: 'end_verse'
};

exports.Prisma.Collected_offeringsScalarFieldEnum = {
  id: 'id',
  target_id: 'target_id',
  service_id: 'service_id',
  amount: 'amount'
};

exports.Prisma.CommentsScalarFieldEnum = {
  id: 'id',
  service_id: 'service_id',
  reply_to: 'reply_to',
  content: 'content',
  commentator: 'commentator',
  theme: 'theme',
  comment_time: 'comment_time'
};

exports.Prisma.EventsScalarFieldEnum = {
  id: 'id',
  name: 'name',
  place_and_time: 'place_and_time',
  description: 'description',
  event_date: 'event_date',
  has_songs: 'has_songs'
};

exports.Prisma.HeadersScalarFieldEnum = {
  id: 'id',
  template_name: 'template_name',
  maintext: 'maintext',
  imgname: 'imgname',
  imgposition: 'imgposition',
  is_aside: 'is_aside'
};

exports.Prisma.InfosScalarFieldEnum = {
  id: 'id',
  service_id: 'service_id',
  slot_name: 'slot_name',
  content_id: 'content_id',
  addedclass: 'addedclass',
  header_id: 'header_id'
};

exports.Prisma.InfosegmentsScalarFieldEnum = {
  id: 'id',
  maintext: 'maintext',
  header: 'header',
  genheader: 'genheader',
  subgenheader: 'subgenheader',
  imgname: 'imgname',
  imgposition: 'imgposition'
};

exports.Prisma.LiturgicalsegmentsScalarFieldEnum = {
  id: 'id',
  text_title: 'text_title',
  use_as_header: 'use_as_header'
};

exports.Prisma.LtextdataScalarFieldEnum = {
  id: 'id',
  title: 'title'
};

exports.Prisma.LtextversedataScalarFieldEnum = {
  id: 'id',
  ltext_id: 'ltext_id',
  verse: 'verse'
};

exports.Prisma.Offering_goalsScalarFieldEnum = {
  id: 'id',
  target_id: 'target_id',
  name: 'name',
  description: 'description',
  amount: 'amount',
  is_default: 'is_default'
};

exports.Prisma.Offering_targetsScalarFieldEnum = {
  id: 'id',
  name: 'name',
  description: 'description'
};

exports.Prisma.Presentation_contentScalarFieldEnum = {
  id: 'id',
  slot_id: 'slot_id',
  content_type: 'content_type',
  new_slide: 'new_slide',
  content: 'content'
};

exports.Prisma.Presentation_structureScalarFieldEnum = {
  id: 'id',
  service_id: 'service_id',
  slot_name: 'slot_name',
  slot_number: 'slot_number',
  slot_type: 'slot_type',
  id_in_type_table: 'id_in_type_table',
  addedclass: 'addedclass',
  header_id: 'header_id',
  content_id: 'content_id',
  instruction: 'instruction'
};

exports.Prisma.ResponsibilitiesScalarFieldEnum = {
  id: 'id',
  service_id: 'service_id',
  responsibility: 'responsibility',
  responsible: 'responsible'
};

exports.Prisma.Responsibilities_metaScalarFieldEnum = {
  id: 'id',
  responsibility: 'responsibility',
  description: 'description'
};

exports.Prisma.SeasonsScalarFieldEnum = {
  id: 'id',
  startdate: 'startdate',
  enddate: 'enddate',
  theme: 'theme',
  comments: 'comments',
  name: 'name'
};

exports.Prisma.Service_specific_presentation_structureScalarFieldEnum = {
  id: 'id',
  service_id: 'service_id',
  slot_name: 'slot_name',
  slot_number: 'slot_number',
  slot_type: 'slot_type',
  id_in_type_table: 'id_in_type_table',
  content_id: 'content_id',
  addedclass: 'addedclass',
  header_id: 'header_id',
  instruction: 'instruction'
};

exports.Prisma.ServicesScalarFieldEnum = {
  id: 'id',
  servicedate: 'servicedate',
  theme: 'theme'
};

exports.Prisma.ServicesongsScalarFieldEnum = {
  id: 'id',
  service_id: 'service_id',
  song_title: 'song_title',
  verses: 'verses',
  is_instrumental: 'is_instrumental',
  song_id: 'song_id',
  songtype: 'songtype',
  position: 'position'
};

exports.Prisma.ServiceversesScalarFieldEnum = {
  id: 'id',
  service_id: 'service_id',
  segment_name: 'segment_name',
  testament: 'testament',
  startbook: 'startbook',
  endbook: 'endbook',
  startchapter: 'startchapter',
  endchapter: 'endchapter',
  startverse: 'startverse',
  endverse: 'endverse'
};

exports.Prisma.SmallgroupsScalarFieldEnum = {
  id: 'id',
  name: 'name',
  description: 'description',
  resp_name: 'resp_name',
  day: 'day',
  time_and_place: 'time_and_place',
  is_active: 'is_active'
};

exports.Prisma.SongdataScalarFieldEnum = {
  id: 'id',
  title: 'title',
  composer: 'composer',
  lyrics: 'lyrics',
  version_description: 'version_description'
};

exports.Prisma.SongsegmentsScalarFieldEnum = {
  id: 'id',
  songdescription: 'songdescription',
  restrictedto: 'restrictedto',
  singlename: 'singlename',
  is_multi: 'is_multi',
  segment_name_is_title: 'segment_name_is_title'
};

exports.Prisma.SongtagsScalarFieldEnum = {
  id: 'id',
  song_id: 'song_id',
  tag: 'tag'
};

exports.Prisma.StylesScalarFieldEnum = {
  id: 'id',
  classname: 'classname',
  tagname: 'tagname',
  attr: 'attr',
  value: 'value',
  stylesheet: 'stylesheet'
};

exports.Prisma.UsersScalarFieldEnum = {
  id: 'id',
  username: 'username',
  password: 'password'
};

exports.Prisma.VersedataScalarFieldEnum = {
  id: 'id',
  song_id: 'song_id',
  verse: 'verse',
  versetype: 'versetype'
};

exports.Prisma.SortOrder = {
  asc: 'asc',
  desc: 'desc'
};

exports.Prisma.NullsOrder = {
  first: 'first',
  last: 'last'
};


exports.Prisma.ModelName = {
  backgrounds: 'backgrounds',
  biblesegments: 'biblesegments',
  collected_offerings: 'collected_offerings',
  comments: 'comments',
  events: 'events',
  headers: 'headers',
  infos: 'infos',
  infosegments: 'infosegments',
  liturgicalsegments: 'liturgicalsegments',
  ltextdata: 'ltextdata',
  ltextversedata: 'ltextversedata',
  offering_goals: 'offering_goals',
  offering_targets: 'offering_targets',
  presentation_content: 'presentation_content',
  presentation_structure: 'presentation_structure',
  responsibilities: 'responsibilities',
  responsibilities_meta: 'responsibilities_meta',
  seasons: 'seasons',
  service_specific_presentation_structure: 'service_specific_presentation_structure',
  services: 'services',
  servicesongs: 'servicesongs',
  serviceverses: 'serviceverses',
  smallgroups: 'smallgroups',
  songdata: 'songdata',
  songsegments: 'songsegments',
  songtags: 'songtags',
  styles: 'styles',
  users: 'users',
  versedata: 'versedata'
};

/**
 * Create the Client
 */
class PrismaClient {
  constructor() {
    throw new Error(
      `PrismaClient is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
    )
  }
}
exports.PrismaClient = PrismaClient

Object.assign(exports, Prisma)
