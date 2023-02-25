INSERT INTO USERS(USER_ID, FIRST_NAME, LAST_NAME, YEAR_OF_BIRTH, MONTH_OF_BIRTH, DAY_OF_BIRTH, GENDER)
SELECT USER_ID, FIRST_NAME, LAST_NAME, YEAR_OF_BIRTH, MONTH_OF_BIRTH, DAY_OF_BIRTH, GENDER
FROM jsoren.PUBLIC_USER_INFORMATION;

INSERT INTO FRIENDS(USER1_ID, USER2_ID)
SELECT DISTINCT USER1_ID, USER2_ID
FROM jsoren.PUBLIC_USER_INFORMATION;

SELECT DISTINCT CURRENT_CITY, CURRENT_STATE, CURRENT_COUNTRY
FROM jsoren.PUBLIC_USER_INFORMATION
UNION
SELECT DISTINCT HOMETOWN_CITY, HOMETOWN_STATE, HOMETOWN_COUNTRY
FROM jsoren.PUBLIC_USER_INFORMATION
UNION
SELECT DISTINCT EVENT_CITY, EVENT_STATE, EVENT_COUNTRY
FROM jsoren.PUBLIC_EVENT_INFORMATION;

INSERT INTO MESSAGES(SENDER_ID, RECEIVER_ID, MESSAGE_CONTENT, SENT_TIME)


INSERT INTO PHOTOS(PHOTO_ID, ALBUM_ID, PHOTO_CAPTION, PHOTO_CREATED_TIME, PHOTO_MODIFIED_TIME, PHOTO_LINK)
SELECT PHOTO_ID, ALBUM_ID, PHOTO_CAPTION, PHOTO_CREATED_TIME, PHOTO_MODIFIED_TIME, PHOTO_LINK
FROM jsoren.PUBLIC_USER_INFORMATION;

INSERT INTO TAGS(PHOTO_ID, TAG_SUBJECT_ID, TAG_CREATED_TIME, TAG_X_COORDINATE, TAG_Y_COORDINATE)
SELECT PHOTO_ID, TAG_SUBJECT_ID, TAG_CREATED_TIME, TAG_X_COORDINATE, TAG_Y_COORDINATE
FROM jsoren.PUBLIC_USER_INFORMATION;

INSERT INTO USER_EVENTS(EVENT_ID, EVENT_CREATOR_ID, EVENT_NAME, EVENT_TAGLINE, EVENT_DESCRIPTION, EVENT_HOST, EVENT_TYPE, EVENT_SUBTYPE, EVENT_ADDRESS, EVENT_CITY, EVENT_STATE, EVENT_COUNTRY, EVENT_START_TIME, EVENT_END_TIME)
SELECT EVENT_ID, EVENT_CREATOR_ID, EVENT_NAME, EVENT_TAGLINE, EVENT_DESCRIPTION, EVENT_HOST, EVENT_TYPE, EVENT_SUBTYPE, EVENT_ADDRESS, EVENT_CITY, EVENT_STATE, EVENT_COUNTRY, EVENT_START_TIME, EVENT_END_TIME
FROM jsoren.PUBLIC_USER_INFORMATION;