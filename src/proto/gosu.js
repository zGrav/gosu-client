'use strict';

module.exports = require("protobufjs").newBuilder({})['import']({
    "package": null,
    "messages": [
        {
            "name": "proto",
            "fields": [],
            "options": {
                "java_package": "maple.proto",
                "go_package": "gosuproto",
                "java_outer_classname": "Community"
            },
            "messages": [
                {
                    "name": "OptionalString",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "value",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "OptionalBool",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "value",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "OptionalInt64",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "value",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "OptionalRepeatedString",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "values",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "Hub",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "parent_ids",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "parents",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "translation_ids",
                            "id": 4
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "translations",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "owner_id",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "closed",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "short_title",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "slug",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "description",
                            "id": 11
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 12
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 13
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "claimed_group_id",
                            "id": 14
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "language",
                            "id": 15
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "nsfw",
                            "id": 16
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 17
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 18
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 19
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "normalized_title",
                            "id": 20
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "normalized_short_title",
                            "id": 21
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "online_user_count",
                            "id": 22
                        }
                    ]
                },
                {
                    "name": "User",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "login",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bytes",
                            "name": "password",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "display_name",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "avatar_image",
                            "id": 6
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "channel_ids",
                            "id": 7
                        },
                        {
                            "rule": "repeated",
                            "type": "Channel",
                            "name": "channels",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "email_confirmed",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "UserStatus",
                            "name": "status",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "terms_of_service",
                            "id": 11
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "newsletter",
                            "id": 12
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 13
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 14
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "game_ids",
                            "id": 15
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "normalized_login",
                            "id": 16
                        },
                        {
                            "rule": "optional",
                            "type": "UserBiography",
                            "name": "biography",
                            "id": 17
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "is_sysop",
                            "id": 18
                        },
                        {
                            "rule": "repeated",
                            "type": "ChannelMembership",
                            "name": "channelMemberships",
                            "id": 19
                        },
                        {
                            "rule": "repeated",
                            "type": "ProprietaryUserGroupRecord",
                            "name": "relations",
                            "id": 20
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 21
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 22
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "ephemeral",
                            "id": 23
                        }
                    ],
                    "enums": [
                        {
                            "name": "UserStatus",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "OFFLINE",
                                    "id": 1
                                },
                                {
                                    "name": "ONLINE",
                                    "id": 2
                                },
                                {
                                    "name": "AWAY",
                                    "id": 3
                                },
                                {
                                    "name": "BUSY",
                                    "id": 4
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "UserProfile",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "display_name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "avatar_image",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "UserBiography",
                            "name": "biography",
                            "id": 6
                        },
                        {
                            "rule": "repeated",
                            "type": "UserGame",
                            "name": "games",
                            "id": 16
                        },
                        {
                            "rule": "repeated",
                            "type": "UserBadge",
                            "name": "badges",
                            "id": 17
                        },
                        {
                            "rule": "repeated",
                            "type": "GroupMembership",
                            "name": "groups",
                            "id": 18
                        },
                        {
                            "rule": "repeated",
                            "type": "UserAccount",
                            "name": "accounts",
                            "id": 19
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "hubs",
                            "id": 20
                        }
                    ]
                },
                {
                    "name": "UserBiography",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "introduction",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "languages",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "UserAccount",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "account_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "AccountType",
                            "name": "type",
                            "id": 4
                        }
                    ],
                    "enums": [
                        {
                            "name": "AccountType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "STEAM",
                                    "id": 1
                                },
                                {
                                    "name": "PSN",
                                    "id": 2
                                },
                                {
                                    "name": "XBOX",
                                    "id": 3
                                },
                                {
                                    "name": "UPLAY",
                                    "id": 4
                                },
                                {
                                    "name": "BATTLE_NET",
                                    "id": 5
                                },
                                {
                                    "name": "ORIGIN",
                                    "id": 6
                                },
                                {
                                    "name": "PVP_NET",
                                    "id": 7
                                },
                                {
                                    "name": "FACEBOOK",
                                    "id": 8
                                },
                                {
                                    "name": "PLAYER_ME",
                                    "id": 9
                                },
                                {
                                    "name": "TEAMSPEAK",
                                    "id": 10
                                },
                                {
                                    "name": "TWITCH",
                                    "id": 11
                                },
                                {
                                    "name": "TWITTER",
                                    "id": 12
                                },
                                {
                                    "name": "WEBLINK",
                                    "id": 13
                                },
                                {
                                    "name": "YOUTUBE",
                                    "id": 14
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "UserGame",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "rank",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 16
                        }
                    ]
                },
                {
                    "name": "UserAgent",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "UserAgentType",
                            "name": "type",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "last_token",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "last_login",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "last_ip",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 8
                        }
                    ],
                    "enums": [
                        {
                            "name": "UserAgentType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "WEB",
                                    "id": 1
                                },
                                {
                                    "name": "ANDROID",
                                    "id": 2
                                },
                                {
                                    "name": "IOS",
                                    "id": 3
                                },
                                {
                                    "name": "WEB_EMBEDDED",
                                    "id": 4
                                },
                                {
                                    "name": "BOT",
                                    "id": 5
                                },
                                {
                                    "name": "LOAD_TEST",
                                    "id": 6
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "UserAgentConnection",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "timestamp",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "ChannelUser",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "user",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelUserType",
                            "name": "type_v1",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.VoiceStatus",
                            "name": "voice_status",
                            "id": 4
                        }
                    ],
                    "enums": [
                        {
                            "name": "ChannelUserType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "OWNER",
                                    "id": 1
                                },
                                {
                                    "name": "MEMBER",
                                    "id": 2
                                },
                                {
                                    "name": "CHATTER",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "ChatUser",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "display_name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "avatar_image",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "is_moderator",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "User.UserStatus",
                            "name": "status",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "ephemeral",
                            "id": 8
                        }
                    ]
                },
                {
                    "name": "ChatUserInfo",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "user",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ChatUser",
                            "name": "friends",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "GroupMembership",
                            "name": "group_memberships",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "Game",
                            "name": "games",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "ProprietaryUserGroupRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Type",
                            "name": "type",
                            "id": 3
                        }
                    ],
                    "enums": [
                        {
                            "name": "Type",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "NONE",
                                    "id": 1
                                },
                                {
                                    "name": "ESL_ADMINS",
                                    "id": 2
                                },
                                {
                                    "name": "ESL_VIDEO",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "UserExternalIDRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_id",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "FriendRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "user",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "Channel",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelType",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "direct_user_ids",
                            "id": 4
                        },
                        {
                            "rule": "repeated",
                            "type": "ChatUser",
                            "name": "direct_users",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 6
                        },
                        {
                            "rule": "repeated",
                            "type": "ChannelBan",
                            "name": "bans",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "game_id",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 9
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "tags",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "tag_list",
                            "id": 11
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "topic",
                            "id": 12
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 13
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 14
                        }
                    ],
                    "enums": [
                        {
                            "name": "ChannelType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "PRIVATE",
                                    "id": 1
                                },
                                {
                                    "name": "PUBLIC",
                                    "id": 2
                                },
                                {
                                    "name": "DIRECT",
                                    "id": 3
                                },
                                {
                                    "name": "GAME",
                                    "id": 4
                                },
                                {
                                    "name": "HUB",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "ChannelBan",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "expiry",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ChannelMembership",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelPermissions",
                            "name": "permissions",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.VoiceStatus",
                            "name": "voice_status",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "ChannelMembershipRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "type",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelPermissions",
                            "name": "permissions",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "VoiceStatus",
                            "name": "voice_status",
                            "id": 8
                        }
                    ],
                    "enums": [
                        {
                            "name": "MembershipType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "NONE",
                                    "id": 1
                                },
                                {
                                    "name": "SUBSCRIBER",
                                    "id": 25
                                },
                                {
                                    "name": "MODERATOR",
                                    "id": 50
                                },
                                {
                                    "name": "MODERATOR_GROUP",
                                    "id": 60
                                },
                                {
                                    "name": "OWNER",
                                    "id": 75
                                }
                            ]
                        },
                        {
                            "name": "VoiceStatus",
                            "values": [
                                {
                                    "name": "VS_UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "VS_OFFLINE",
                                    "id": 1
                                },
                                {
                                    "name": "VS_ONLINE_MUTED",
                                    "id": 2
                                },
                                {
                                    "name": "VS_ONLINE",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "ChannelPermissions",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "kick_ban_user",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "invite_user",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "set_channel_role",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "edit_sticky_message",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "delete_message",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "edit_channel",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "delete_channel",
                            "id": 7
                        }
                    ]
                },
                {
                    "name": "Group",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "owner",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "description",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 6
                        },
                        {
                            "rule": "repeated",
                            "type": "Channel",
                            "name": "channels",
                            "id": 7
                        },
                        {
                            "rule": "repeated",
                            "type": "ChatUser",
                            "name": "members",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "member_count",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "subscriber_count",
                            "id": 10
                        }
                    ]
                },
                {
                    "name": "GroupPermissions",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "edit_group",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "create_channel",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "join_public_channel",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "join_private_channel",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "invite_user",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "set_user_membership_type",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "GroupMembership",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "GroupMembershipTypeV1",
                            "name": "type_v1",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "GroupMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "GroupPermissions",
                            "name": "permissions",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "GroupMembershipRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "type",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "GroupPermissions",
                            "name": "permissions",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 9
                        }
                    ],
                    "enums": [
                        {
                            "name": "MembershipType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "NONE",
                                    "id": 1
                                },
                                {
                                    "name": "GUEST",
                                    "id": 25
                                },
                                {
                                    "name": "MEMBER",
                                    "id": 40
                                },
                                {
                                    "name": "MODERATOR",
                                    "id": 50
                                },
                                {
                                    "name": "OWNER",
                                    "id": 100
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "GroupMember",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "GroupInvitation",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "code",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "inviter_id",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "PotentialGroupMember",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "email_address",
                            "id": 2
                        }
                    ],
                    "oneofs": {
                        "identifier": [
                            1,
                            2
                        ]
                    }
                },
                {
                    "name": "GroupInvite",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "inviter_id",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "code",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "GroupMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 9
                        }
                    ]
                },
                {
                    "name": "Game",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "background_images",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "read_only",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "short_name",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "GameMembership",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "game_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "GameMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "GameMembershipRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "game_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "type",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 6
                        }
                    ],
                    "enums": [
                        {
                            "name": "MembershipType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "NONE",
                                    "id": 1
                                },
                                {
                                    "name": "MEMBER",
                                    "id": 50
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "GameEditEntry",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "existing_game_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "new_game",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "edited_game",
                            "id": 3
                        }
                    ],
                    "oneofs": {
                        "game": [
                            1,
                            2,
                            3
                        ]
                    }
                },
                {
                    "name": "OptionalGames",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "GameEditEntry",
                            "name": "games",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GameRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 4
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "background_images",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "short_name",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "GameListPage",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "GameListEntry",
                            "name": "games",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_number",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_size",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "GameListEntry",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "GameChannelListEntry",
                            "name": "channels",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "online_user_count",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "user_count",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "has_more_channels",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "channel_count",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "GameChannelListPage",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "GameChannelListEntry",
                            "name": "channels",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_number",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_size",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "has_more_channels",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "GameChannelListEntry",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "online_user_count",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "user_count",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "Badge",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "image",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "priority",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "UserBadge",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "badge_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "image",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "priority",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "timestamp",
                            "id": 7
                        }
                    ]
                },
                {
                    "name": "Tag",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "BiographyUpdateData",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "introduction",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "languages",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "AnalyticsEvent",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "ip",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "action",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "category",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "screen",
                            "id": 6
                        },
                        {
                            "rule": "map",
                            "type": "string",
                            "keytype": "string",
                            "name": "properties",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "UserAgent.UserAgentType",
                            "name": "agent_type",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "local_agent_id",
                            "id": 9
                        }
                    ]
                },
                {
                    "name": "RPCHubCreateHubRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "parent_ids",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "translation_ids",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 13
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "closed",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "short_title",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "description",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "claimed_group_id",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "language",
                            "id": 11
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "nsfw",
                            "id": 12
                        }
                    ]
                },
                {
                    "name": "RPCHubCreateHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "children",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "siblings",
                            "id": 4
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "SERVER_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "TITLE_EXISTS",
                                    "id": 2
                                },
                                {
                                    "name": "OWNER_INVALID",
                                    "id": 3
                                },
                                {
                                    "name": "GROUP_INVALID",
                                    "id": 4
                                },
                                {
                                    "name": "TITLE_IMAGE_INVALID",
                                    "id": 5
                                },
                                {
                                    "name": "BACKGROUND_IMAGE_INVALID",
                                    "id": 6
                                },
                                {
                                    "name": "PARENTS_INVALID",
                                    "id": 7
                                },
                                {
                                    "name": "TRANSLATIONS_INVALID",
                                    "id": 8
                                },
                                {
                                    "name": "LANGUAGE_INVALID",
                                    "id": 9
                                },
                                {
                                    "name": "TITLE_INVALID",
                                    "id": 10
                                },
                                {
                                    "name": "SHORT_TITLE_INVALID",
                                    "id": 11
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 12
                                },
                                {
                                    "name": "SHORT_TITLE_EXISTS",
                                    "id": 13
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 14
                                },
                                {
                                    "name": "TITLE_TOO_SHORT",
                                    "id": 15
                                },
                                {
                                    "name": "TITLE_TOO_LONG",
                                    "id": 16
                                },
                                {
                                    "name": "SHORT_TITLE_TOO_SHORT",
                                    "id": 17
                                },
                                {
                                    "name": "SHORT_TITLE_TOO_LONG",
                                    "id": 18
                                },
                                {
                                    "name": "SHORT_TITLE_RESERVED",
                                    "id": 19
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubEditHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 15
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalRepeatedString",
                            "name": "parent_ids",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalRepeatedString",
                            "name": "translation_ids",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "owner_id",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.BoolValue",
                            "name": "closed",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "title",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "short_title",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "description",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "title_image",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "background_image",
                            "id": 11
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "claimed_group_id",
                            "id": 12
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "language",
                            "id": 13
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.BoolValue",
                            "name": "nsfw",
                            "id": 14
                        }
                    ]
                },
                {
                    "name": "RPCHubEditHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubCreateHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "children",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "siblings",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "RPCHubDeleteHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCHubDeleteHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubGetHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "short_title",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id_or_short_title",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "populate_parents",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "populate_children",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "populate_siblings",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "RPCHubGetHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "children",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "siblings",
                            "id": 4
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN",
                                    "id": 1
                                },
                                {
                                    "name": "NOT_FOUND",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubLinkHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCHubLinkHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                },
                                {
                                    "name": "ALREADY_LINKED",
                                    "id": 4
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubUnlinkHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCHubUnlinkHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                },
                                {
                                    "name": "NOT_LINKED",
                                    "id": 4
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubGetAllHubsRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "limit",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCHubGetAllHubsResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "hubs",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCHubValidateTitleRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "title",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "short_title",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCHubValidateTitleResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 1
                                },
                                {
                                    "name": "SERVER_ERROR",
                                    "id": 2
                                },
                                {
                                    "name": "TITLE_EXISTS",
                                    "id": 3
                                },
                                {
                                    "name": "TITLE_INVALID",
                                    "id": 4
                                },
                                {
                                    "name": "SHORT_TITLE_EXISTS",
                                    "id": 5
                                },
                                {
                                    "name": "SHORT_TITLE_INVALID",
                                    "id": 6
                                },
                                {
                                    "name": "TITLE_TOO_SHORT",
                                    "id": 7
                                },
                                {
                                    "name": "TITLE_TOO_LONG",
                                    "id": 8
                                },
                                {
                                    "name": "SHORT_TITLE_TOO_SHORT",
                                    "id": 9
                                },
                                {
                                    "name": "SHORT_TITLE_TOO_LONG",
                                    "id": 10
                                },
                                {
                                    "name": "SHORT_TITLE_RESERVED",
                                    "id": 11
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubAddMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "inviter_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_existing",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_pending",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_banned",
                            "id": 8
                        }
                    ],
                    "oneofs": {
                        "identifier": [
                            3,
                            4
                        ]
                    }
                },
                {
                    "name": "RPCHubAddMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "existing_users",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "pending_users",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "banned_users",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry",
                            "name": "updated_entry",
                            "id": 5
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "INVALID_USER_ID",
                                    "id": 3
                                },
                                {
                                    "name": "INVALID_EMAIL",
                                    "id": 4
                                },
                                {
                                    "name": "INVALID_MEMBERSHIP_TYPE",
                                    "id": 5
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 6
                                },
                                {
                                    "name": "ALREADY_PENDING",
                                    "id": 7
                                },
                                {
                                    "name": "ALREADY_MEMBER",
                                    "id": 8
                                },
                                {
                                    "name": "ALREADY_BANNED",
                                    "id": 9
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubGetMembersRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_existing",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_pending",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_banned",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "size",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "from",
                            "id": 7
                        }
                    ]
                },
                {
                    "name": "RPCHubGetMembersResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "existing_users",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "pending_users",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "banned_users",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "total_users",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "from",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "paged_users",
                            "id": 7
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "MembershipEntry",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invited_email",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Status",
                            "name": "status",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "type",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "user",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "owner",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "derived_type",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "parent_type",
                            "id": 10
                        }
                    ],
                    "enums": [
                        {
                            "name": "Status",
                            "values": [
                                {
                                    "name": "STATUS_UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "STATUS_EXISTING",
                                    "id": 1
                                },
                                {
                                    "name": "STATUS_PENDING",
                                    "id": 2
                                },
                                {
                                    "name": "STATUS_BANNED",
                                    "id": 3
                                }
                            ]
                        },
                        {
                            "name": "MembershipType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "BANNED",
                                    "id": 5
                                },
                                {
                                    "name": "NONE",
                                    "id": 10
                                },
                                {
                                    "name": "MEMBER",
                                    "id": 25
                                },
                                {
                                    "name": "MODERATOR",
                                    "id": 50
                                },
                                {
                                    "name": "OWNER",
                                    "id": 75
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubSendInviteRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "sender_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "RPCHubSendInviteResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "ALREADY_MEMBER",
                                    "id": 3
                                },
                                {
                                    "name": "NOT_INVITED",
                                    "id": 4
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubRequestMembershipRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCHubRequestMembershipResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                },
                                {
                                    "name": "ALREADY_MEMBER",
                                    "id": 3
                                },
                                {
                                    "name": "BANNED",
                                    "id": 4
                                },
                                {
                                    "name": "HUB_NOT_CLOSED",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubEditMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "editer_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_existing",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_pending",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_banned",
                            "id": 8
                        }
                    ]
                },
                {
                    "name": "RPCHubEditMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "existing_users",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "pending_users",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "banned_users",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry",
                            "name": "updated_entry",
                            "id": 5
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubJoinHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "code",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCHubJoinHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 3
                                },
                                {
                                    "name": "BANNED",
                                    "id": 4
                                },
                                {
                                    "name": "INVALID_CODE",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubLeaveHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCHubLeaveHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubAddExternalMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "acting_user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "acting_group_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "RPCHubAddExternalMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ExternalMembershipEntry",
                            "name": "users",
                            "id": 2
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 3
                                },
                                {
                                    "name": "INVALID_MEMBERSHIP_TYPE",
                                    "id": 4
                                },
                                {
                                    "name": "ALREADY_MEMBER",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubGetExternalMembersRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "acting_user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "acting_group_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCHubGetExternalMembersResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ExternalMembershipEntry",
                            "name": "users",
                            "id": 2
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "ExternalMembershipEntry",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "type",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 4
                        }
                    ],
                    "enums": [
                        {
                            "name": "Status",
                            "values": [
                                {
                                    "name": "STATUS_UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "STATUS_EXISTING",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "MembershipType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "BANNED",
                                    "id": 5
                                },
                                {
                                    "name": "NONE",
                                    "id": 10
                                },
                                {
                                    "name": "MEMBER",
                                    "id": 25
                                },
                                {
                                    "name": "MODERATOR",
                                    "id": 50
                                },
                                {
                                    "name": "OWNER",
                                    "id": 75
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubEditExternalMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "acting_user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "acting_group_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "RPCHubEditExternalMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ExternalMembershipEntry",
                            "name": "users",
                            "id": 2
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubGetMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCHubGetMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "HubMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 2
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCHubRegisterExternalUserIDRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCHubRegisterExternalUserIDResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "HubInvite",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "inviter_id",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "code",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "HubMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 9
                        }
                    ]
                },
                {
                    "name": "HubMembershipRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "HubMembership",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "HubMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "HubPermissions",
                            "name": "permissions",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "HubMembershipRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipType",
                            "name": "type",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "HubPermissions",
                            "name": "permissions",
                            "id": 9
                        }
                    ],
                    "enums": [
                        {
                            "name": "MembershipType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "BANNED",
                                    "id": 5
                                },
                                {
                                    "name": "NONE",
                                    "id": 10
                                },
                                {
                                    "name": "MEMBER",
                                    "id": 25
                                },
                                {
                                    "name": "MODERATOR",
                                    "id": 50
                                },
                                {
                                    "name": "MODERATOR_GROUP",
                                    "id": 60
                                },
                                {
                                    "name": "OWNER",
                                    "id": 75
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "HubPermissions",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "edit_hub",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "delete_hub",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "HubExternalMembershipRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "created_at",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "updated_at",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "HubMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 7
                        }
                    ]
                },
                {
                    "name": "HubCreateHubRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "parent_ids",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "translation_ids",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "closed",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "short_title",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "description",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "claimed_group_id",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "language",
                            "id": 11
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "nsfw",
                            "id": 12
                        }
                    ]
                },
                {
                    "name": "HubCreateHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubCreateHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "children",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "siblings",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "HubGetHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "children",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "siblings",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "HubGetAllHubsResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "hubs",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "HubEditHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "OptionalRepeatedString",
                            "name": "parent_ids",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalRepeatedString",
                            "name": "translation_ids",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.BoolValue",
                            "name": "closed",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "title",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "short_title",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "description",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "title_image",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "background_image",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "claimed_group_id",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "language",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.BoolValue",
                            "name": "nsfw",
                            "id": 11
                        }
                    ]
                },
                {
                    "name": "HubEditHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubCreateHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "hub",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "children",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "siblings",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "HubDeleteHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubDeleteHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "HubValidateTitleRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "title",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "google.protobuf.StringValue",
                            "name": "short_title",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "HubValidateTitleResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubValidateTitleResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "AddMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_existing",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_pending",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_banned",
                            "id": 6
                        }
                    ],
                    "oneofs": {
                        "identifier": [
                            1,
                            2
                        ]
                    }
                },
                {
                    "name": "AddMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubAddMemberResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "existing_users",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "pending_users",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "banned_users",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry",
                            "name": "updated_entry",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "GetMembersResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubGetMembersResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "existing_users",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "pending_users",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "banned_users",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "total_users",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "from",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "paged_users",
                            "id": 7
                        }
                    ]
                },
                {
                    "name": "SearchMembersResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "from",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "users",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "paged_users",
                            "id": 4
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "SendInviteRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "SendInviteResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubSendInviteResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "EditMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_existing",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_pending",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fetch_banned",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "EditMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubEditMemberResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "existing_users",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "pending_users",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "MembershipEntry",
                            "name": "banned_users",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry",
                            "name": "updated_entry",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "HubAddExternalMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "HubAddExternalMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubAddExternalMemberResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ExternalMembershipEntry",
                            "name": "users",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "HubEditExternalMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "MembershipEntry.MembershipType",
                            "name": "type",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "HubEditExternalMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubEditExternalMemberResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ExternalMembershipEntry",
                            "name": "users",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "HubGetExternalMembersResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubGetExternalMembersResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ExternalMembershipEntry",
                            "name": "users",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "HubJoinHubRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "code",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "HubJoinHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubJoinHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "HubLeaveHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubLeaveHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "HubLinkHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubLinkHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "HubUnlinkHubResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubUnlinkHubResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RegisterExternalUserIDRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "external_user_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RegisterExternalUserIDResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubRegisterExternalUserIDResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "HubGetMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "RPCHubGetMemberResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "HubMembershipRecord.MembershipType",
                            "name": "type",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "UserInfo",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "ChatUser",
                            "name": "friends",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "FriendRequest",
                            "name": "sent_friend_requests",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "FriendRequest",
                            "name": "received_friend_requests",
                            "id": 4
                        },
                        {
                            "rule": "repeated",
                            "type": "GroupMembership",
                            "name": "group_memberships",
                            "id": 5
                        },
                        {
                            "rule": "repeated",
                            "type": "Game",
                            "name": "games",
                            "id": 6
                        },
                        {
                            "rule": "repeated",
                            "type": "HubMembership",
                            "name": "hub_memberships",
                            "id": 7
                        }
                    ]
                },
                {
                    "name": "Any",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "type_url",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "bytes",
                            "name": "value",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "WebsocketMessage",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "MessageType",
                            "name": "type",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "timestamp",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "sender",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "UserMessage",
                            "name": "user_message",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "UserMessage",
                            "name": "user_action",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "SystemMessage",
                            "name": "system_message",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "SystemAction",
                            "name": "system_action",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "recipient",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "processed_by_crawler",
                            "id": 16
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "deleted",
                            "id": 17
                        }
                    ],
                    "oneofs": {
                        "message": [
                            6,
                            7,
                            8,
                            10
                        ]
                    },
                    "enums": [
                        {
                            "name": "MessageType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "CHAT_MESSAGE",
                                    "id": 1
                                },
                                {
                                    "name": "USER_ACTION",
                                    "id": 2
                                },
                                {
                                    "name": "SYSTEM_MESSAGE",
                                    "id": 3
                                },
                                {
                                    "name": "PING",
                                    "id": 4
                                },
                                {
                                    "name": "SYSTEM_ACTION",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "MessageBodyAnnotation",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "SliceType",
                            "name": "type",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "pos_start",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "pos_end",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "replacement",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "target",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bytes",
                            "name": "proprietary",
                            "id": 6
                        }
                    ],
                    "enums": [
                        {
                            "name": "SliceType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "PLAINTEXT",
                                    "id": 1
                                },
                                {
                                    "name": "USER_MENTION",
                                    "id": 2
                                },
                                {
                                    "name": "WEB_LINK",
                                    "id": 3
                                },
                                {
                                    "name": "CHANNEL_LINK",
                                    "id": 4
                                },
                                {
                                    "name": "EMAIL",
                                    "id": 5
                                },
                                {
                                    "name": "TEAMSPEAK",
                                    "id": 6
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "MessageBodyAnnotationChannelLinkExtension",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "MessageBodyAnnotationChannelLinkExtensionInvitation",
                            "name": "invitation",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "MessageBodyAnnotationChannelLinkExtensionInvitation",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "consumed",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "UserMessage",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "body",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "MessageBodyAnnotation",
                            "name": "body_annotations",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "user",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "deleted_timestamp",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "deleted_user",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "quote",
                            "id": 16
                        },
                        {
                            "rule": "optional",
                            "type": "Website",
                            "name": "website",
                            "id": 17
                        }
                    ],
                    "oneofs": {
                        "extension": [
                            16,
                            17
                        ]
                    }
                },
                {
                    "name": "Website",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "url",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "description",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "image",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "video",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "image_width",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "image_height",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "WebsiteType",
                            "name": "type",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "content_id",
                            "id": 9
                        }
                    ],
                    "enums": [
                        {
                            "name": "WebsiteType",
                            "values": [
                                {
                                    "name": "DEFAULT",
                                    "id": 0
                                },
                                {
                                    "name": "TWITCH_CHANNEL",
                                    "id": 1
                                },
                                {
                                    "name": "YOUTUBE_VIDEO",
                                    "id": 2
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "UserAction",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "SystemMessage",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "MessageType",
                            "name": "type",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "TypingStatus",
                            "name": "typing",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "user",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "UserVoiceStatusUpdate",
                            "name": "user_voice_status",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "MessageBatch",
                            "name": "message_batch",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelUser.ChannelUserType",
                            "name": "user_type_v1",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.MembershipType",
                            "name": "user_type",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "Any",
                            "name": "payload",
                            "id": 16
                        }
                    ],
                    "oneofs": {
                        "body": [
                            3,
                            4,
                            5,
                            8,
                            9
                        ]
                    },
                    "enums": [
                        {
                            "name": "MessageType",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "TYPING",
                                    "id": 1
                                },
                                {
                                    "name": "STATUS",
                                    "id": 2
                                },
                                {
                                    "name": "SYSTEM_MESSAGE",
                                    "id": 3
                                },
                                {
                                    "name": "USER_JOINED",
                                    "id": 4
                                },
                                {
                                    "name": "USER_LEFT",
                                    "id": 5
                                },
                                {
                                    "name": "FRIEND_UPDATED",
                                    "id": 6
                                },
                                {
                                    "name": "READ_STATUS_UPDATE",
                                    "id": 7
                                },
                                {
                                    "name": "REQUEST_TO_PULL",
                                    "id": 8
                                },
                                {
                                    "name": "USER_VOICE_STATUS",
                                    "id": 9
                                },
                                {
                                    "name": "MESSAGE_DELETED",
                                    "id": 10
                                },
                                {
                                    "name": "MESSAGE_BATCH_DELETED",
                                    "id": 11
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "SystemAction",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Type",
                            "name": "type",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "body",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "MessageBodyAnnotation",
                            "name": "body_annotations",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "Any",
                            "name": "payload",
                            "id": 4
                        }
                    ],
                    "enums": [
                        {
                            "name": "Type",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "GENERAL",
                                    "id": 1
                                },
                                {
                                    "name": "USER_LOGGED_IN",
                                    "id": 2
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "SystemActionPayloadUserLoggedIn",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "former_user",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "ChatUser",
                            "name": "current_user",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "MessageBatch",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "start",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "end",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "UserVoiceStatusUpdate",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.VoiceStatus",
                            "name": "user_voice_status",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "TypingStatus",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "is_typing",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "MessageWithMeta",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "WebsocketMessage",
                            "name": "message",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "UserAgent",
                            "name": "sender_agent",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "PrefValue",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "PrefNullValue",
                            "name": "null_value",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "double",
                            "name": "number_value",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "string_value",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "bool_value",
                            "id": 4
                        }
                    ],
                    "oneofs": {
                        "kind": [
                            1,
                            2,
                            3,
                            4
                        ]
                    }
                },
                {
                    "name": "Pref",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "domain",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "keypath",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "PrefValue",
                            "name": "value",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "PrefRecord",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "domain",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "keypath",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "PrefValue",
                            "name": "value",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "AuthLoginRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "username",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "password",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_name",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "UserAgent.UserAgentType",
                            "name": "agent_type",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "AuthLoginResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "AuthWithTokenRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "AuthWithTokenResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "AuthRegisterRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "username",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "password",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invite_code",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "newsletter",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "terms_of_service",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "gosu_invite_code",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_id",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_name",
                            "id": 9
                        },
                        {
                            "rule": "optional",
                            "type": "UserAgent.UserAgentType",
                            "name": "agent_type",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "ephemeral",
                            "id": 11
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "join_communities",
                            "id": 12
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "auto_generate_name_suffix",
                            "id": 13
                        }
                    ]
                },
                {
                    "name": "AuthRegisterResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "AutoGeneratedPassword",
                            "id": 5
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "USERNAME_TAKEN",
                                    "id": 1
                                },
                                {
                                    "name": "EMAIL_TAKEN",
                                    "id": 2
                                },
                                {
                                    "name": "PW_TOO_SHORT",
                                    "id": 3
                                },
                                {
                                    "name": "PW_BAD",
                                    "id": 4
                                },
                                {
                                    "name": "EMAIL_INVALID",
                                    "id": 5
                                },
                                {
                                    "name": "SERVER_ERROR",
                                    "id": 6
                                },
                                {
                                    "name": "USERNAME_INVALID",
                                    "id": 7
                                },
                                {
                                    "name": "DISPLAYNAME_TAKEN",
                                    "id": 8
                                },
                                {
                                    "name": "DISPLAYNAME_INVALID",
                                    "id": 9
                                },
                                {
                                    "name": "AVATAR_INVALID",
                                    "id": 10
                                },
                                {
                                    "name": "GROUP_INVITE_CODE_INVALID",
                                    "id": 11
                                },
                                {
                                    "name": "GOSU_INVITE_CODE_INVALID",
                                    "id": 12
                                },
                                {
                                    "name": "INVITE_CODE_MISSING",
                                    "id": 13
                                },
                                {
                                    "name": "BACKGROUND_IMAGE_INVALID",
                                    "id": 14
                                },
                                {
                                    "name": "TITLE_IMAGE_INVALID",
                                    "id": 15
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "AuthActivateResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "AuthPasswordResetRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "AuthPasswordResetResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "AuthExecutePasswordResetRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "secret",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "new_password",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "AuthExecutePasswordResetResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ProfileGetOwnProfileResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "UserInfo",
                            "name": "user_info",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ProfileGetOtherProfileResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ChatUserInfo",
                            "name": "user_info",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ProfileUpdateRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "email",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "display_name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "avatar_image",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "User.UserStatus",
                            "name": "status",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalBool",
                            "name": "terms_of_service",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalBool",
                            "name": "newsletter",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "background_image",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "title_image",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "BiographyUpdateData",
                            "name": "biography",
                            "id": 16
                        }
                    ]
                },
                {
                    "name": "ProfileUpdateResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "AuthRegisterResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ProfileUpdatePasswordRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "old_password",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "new_password",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "ProfileUpdatePasswordResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ProfileRequestFriendshipRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ProfileRequestFriendshipResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "FriendshipStatus",
                            "name": "status",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "FriendshipStatus",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "REQUESTED",
                                    "id": 1
                                },
                                {
                                    "name": "ACCEPTED",
                                    "id": 2
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "ProfileUnfriendResponse",
                    "fields": []
                },
                {
                    "name": "ProfileGetFriendsResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "ChatUser",
                            "name": "friends",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "FriendRequest",
                            "name": "sent_friend_requests",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "FriendRequest",
                            "name": "received_friend_requests",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "UserSetChannelRoleRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.MembershipType",
                            "name": "membership_type",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "UserSetChannelRoleResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN",
                                    "id": 1
                                },
                                {
                                    "name": "USER_NOT_IN_CHANNEL",
                                    "id": 2
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 3
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 4
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "UserSetGroupRoleRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "GroupMembershipRecord.MembershipType",
                            "name": "membership_type",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "UserSetGroupRoleResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN",
                                    "id": 1
                                },
                                {
                                    "name": "USER_NOT_IN_GROUP",
                                    "id": 2
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 3
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 4
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "UserValidateUsernameRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "username",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "UserValidateUsernameResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "AuthRegisterResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "UserConvertEphemeralUserRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "username",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "email_address",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "password",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "newsletter",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "terms_of_service",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "UserConvertEphemeralUserResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 3
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 1
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 2
                                },
                                {
                                    "name": "USER_NOT_EPHEMERAL",
                                    "id": 3
                                },
                                {
                                    "name": "USERNAME_TAKEN",
                                    "id": 4
                                },
                                {
                                    "name": "USERNAME_INVALID",
                                    "id": 5
                                },
                                {
                                    "name": "EMAIL_TAKEN",
                                    "id": 6
                                },
                                {
                                    "name": "EMAIL_INVALID",
                                    "id": 7
                                },
                                {
                                    "name": "PW_TOO_SHORT",
                                    "id": 8
                                },
                                {
                                    "name": "PW_BAD",
                                    "id": 9
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "ChatHandshakeResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "socket_address",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChatGetMessagesResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "WebsocketMessage",
                            "name": "messages",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChatGetUsersResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "ChatUser",
                            "name": "users",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChatGetChannelUsersResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "ChannelUser",
                            "name": "users",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "paged_users",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "from",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "online_users",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "total_users",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "ChatGetChannelsResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "Channel",
                            "name": "channels",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChatPostJoinedChannelsRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "channel_ids",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChatGetS3UploadDataResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "url",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "access_key_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "filename",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "policy",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "signed",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "ChatGetDirectMessageChannelRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "user_ids",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChatGetDirectMessageChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupCreateGroupRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "description",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "GroupCreateGroupResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "CreateGroupErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "GroupEditGroupRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "description",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "title_image",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "background_image",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "GroupEditGroupResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "CreateGroupErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "GroupGetGroupResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "Hub",
                            "name": "linked_hubs",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "GroupCreateInviteCodeRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupCreateInviteCodeResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invite_code",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupGetInviteCodeInfoRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invite_code",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupGetInviteCodeInfoResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupAcceptInviteRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invite_code",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupAcceptInviteResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "success",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupLeaveGroupRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupLeaveGroupResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "UserInfo",
                            "name": "user_info",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupGetGroupsResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "Group",
                            "name": "groups",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupAddGroupMembersRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "PotentialGroupMember",
                            "name": "invitees",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "GroupAddGroupMembersResponse",
                    "fields": []
                },
                {
                    "name": "GroupJoinRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "code",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "GroupJoinResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 3
                                },
                                {
                                    "name": "BANNED",
                                    "id": 4
                                },
                                {
                                    "name": "INVALID_CODE",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "GroupLeaveResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "GroupGetGroupTokenResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 2
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "PrefsGetPrefResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Pref",
                            "name": "pref",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "PrefsGetPrefsResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "Pref",
                            "name": "prefs",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "PrefsSetPrefsRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "Pref",
                            "name": "prefs",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "PrefsSetPrefsResponse",
                    "fields": []
                },
                {
                    "name": "PrefsDeletePrefsResponse",
                    "fields": []
                },
                {
                    "name": "SearchSearchRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "search_term",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "limit",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "search_users",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "search_channels",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "search_groups",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "search_games",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "search_tags",
                            "id": 7
                        }
                    ]
                },
                {
                    "name": "SearchSearchResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "ChatUser",
                            "name": "users",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "Channel",
                            "name": "channels",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "Group",
                            "name": "groups",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "Game",
                            "name": "games",
                            "id": 4
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "tags",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "ChannelGetGameListResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "GameListPage",
                            "name": "page",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "cache_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ChannelGetGameChannelListResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "GameChannelListPage",
                            "name": "page",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "cache_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ReportRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "display_name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "avatar_image_url",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_name",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message_id",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message_timestamp",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message_body",
                            "id": 8
                        },
                        {
                            "rule": "optional",
                            "type": "Reason",
                            "name": "reason",
                            "id": 9
                        }
                    ],
                    "enums": [
                        {
                            "name": "Reason",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "ABUSIVE_LANGUAGE",
                                    "id": 1
                                },
                                {
                                    "name": "GRIEFING",
                                    "id": 2
                                },
                                {
                                    "name": "MOBBING",
                                    "id": 3
                                },
                                {
                                    "name": "RACISM",
                                    "id": 4
                                },
                                {
                                    "name": "SPAM",
                                    "id": 5
                                },
                                {
                                    "name": "OTHER",
                                    "id": 6
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "ChannelInfoResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "isJoinable",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "EditChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "title",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "topic",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalBool",
                            "name": "visibility",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "ChannelReadStatusResponseEntry",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "timestamp",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "WebsocketMessage",
                            "name": "latest_message",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "unread_count",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "unread_mention_count",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "ChannelReadStatusResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "ChannelReadStatusResponseEntry",
                            "name": "channels",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChannelKickBanRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "kicked_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "ban",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalInt64",
                            "name": "ban_duration",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "ChannelKickBanResponse",
                    "fields": []
                },
                {
                    "name": "ChannelUnBanRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "unbanned_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ChannelUnBanResponse",
                    "fields": []
                },
                {
                    "name": "ChannelJoinGameChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "game_id",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "tags",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ChannelJoinGameChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "ChannelCreateGroupChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Channel.ChannelType",
                            "name": "type",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "ChannelCreateGroupChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ChannelInviteMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "ChannelInviteMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "INVALID_INPUT",
                                    "id": 1
                                },
                                {
                                    "name": "FORBIDDEN",
                                    "id": 2
                                },
                                {
                                    "name": "USER_ALREADY_JOINED",
                                    "id": 3
                                },
                                {
                                    "name": "SERVER",
                                    "id": 4
                                },
                                {
                                    "name": "USER_NOT_ALLOWED",
                                    "id": 5
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "GameResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "Channel",
                            "name": "channels",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCJoinProprietaryChannelsRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "ProprietaryUserGroupRecord.Type",
                            "name": "type",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCJoinProprietaryChannelsResponse",
                    "fields": []
                },
                {
                    "name": "RPCJoinChannelInfoRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invite",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCJoinChannelInfoResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "isJoinable",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCDeleteChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCDeleteChannelResponse",
                    "fields": []
                },
                {
                    "name": "RPCEditChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "title",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalString",
                            "name": "topic",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalBool",
                            "name": "visibility",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "RPCEditChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "title_updated",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "topic_updated",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "visibility_updated",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "RPCChannelCreateGroupChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "Channel.ChannelType",
                            "name": "type",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "RPCChannelCreateGroupChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCChannelCreateChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Channel.ChannelType",
                            "name": "type",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "group_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCChannelCreateChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCExtendedChannelInfoResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Group",
                            "name": "group",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Game",
                            "name": "game",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "ChannelUpdateRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invite",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "force",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "ChannelUpdateResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "User",
                            "name": "user",
                            "id": 2
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN",
                                    "id": 1
                                },
                                {
                                    "name": "USER_BANNED",
                                    "id": 2
                                },
                                {
                                    "name": "USER_NOT_A_MEMBER",
                                    "id": 3
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCChannelAddUsersToHubChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "hub_id",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "user_ids",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "remove",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "RPCChannelAddUsersToHubChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCChannelAddUserToHubChannelsRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "channel_ids",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "remove",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCChannelAddUserToHubChannelsResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ],
                    "enums": [
                        {
                            "name": "ErrorType",
                            "values": [
                                {
                                    "name": "NONE",
                                    "id": 0
                                },
                                {
                                    "name": "UNKNOWN_ERROR",
                                    "id": 1
                                },
                                {
                                    "name": "BAD_REQUEST",
                                    "id": 2
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "RPCChannelGetChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCChannelGetChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCChannelJoinGameChannelRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "game_id",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "tags",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCChannelJoinGameChannelResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "Channel",
                            "name": "channel",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCChannelKickBanRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "kicker_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "kicked_id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "ban",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "OptionalInt64",
                            "name": "ban_duration",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "RPCChannelKickBanResponse",
                    "fields": []
                },
                {
                    "name": "RPCChannelUnBanRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "unbanner_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "unbanned_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCChannelUnBanResponse",
                    "fields": []
                },
                {
                    "name": "RPCChannelGetChannelUsersRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCChannelGetChannelUsersResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "ChannelUser",
                            "name": "users",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCChannelUnhideChannelRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "user_ids",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCChannelUnhideChannelResponse",
                    "fields": []
                },
                {
                    "name": "RPCChannelInviteMemberRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "channel_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "inviter_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "invitee_id",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCChannelInviteMemberResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ChannelInviteMemberResponse.ErrorType",
                            "name": "error",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "RPCGameGetGamesRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "cache_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_number",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_size",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "RPCGameGetGamesResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "GameListPage",
                            "name": "page",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "cache_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "RPCGameGetGameChannelsRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "cache_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "game_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_number",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "page_size",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "RPCGameGetGameChannelsResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "GameChannelListPage",
                            "name": "page",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "cache_id",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "PushRegisterRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "provider",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "language",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "PushRegisterResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "user_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "agent_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "token",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "provider",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "subscriber_id",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "PushMessageRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "event",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "message",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 3
                        },
                        {
                            "rule": "map",
                            "type": "string",
                            "keytype": "string",
                            "name": "localized",
                            "id": 4
                        },
                        {
                            "rule": "map",
                            "type": "string",
                            "keytype": "string",
                            "name": "data",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "increment",
                            "id": 6
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "category",
                            "id": 7
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "sound",
                            "id": 8
                        }
                    ]
                },
                {
                    "name": "PushMessageResponse",
                    "fields": []
                },
                {
                    "name": "SearchRequest",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "types",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "fields",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "text",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fuzzy",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "size",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "from",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "SearchResponse",
                    "fields": [
                        {
                            "rule": "map",
                            "type": "SearchHits",
                            "keytype": "string",
                            "name": "hits",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "int32",
                            "name": "from",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "SearchHits",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "SearchHit",
                            "name": "hits",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "type",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "total",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "SearchHit",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "float",
                            "name": "score",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "index",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "Type",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 4
                        },
                        {
                            "rule": "map",
                            "type": "Highlights",
                            "keytype": "string",
                            "name": "highlights",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "SearchUser",
                            "name": "user",
                            "id": 10
                        },
                        {
                            "rule": "optional",
                            "type": "SearchGroup",
                            "name": "group",
                            "id": 11
                        },
                        {
                            "rule": "optional",
                            "type": "SearchGame",
                            "name": "game",
                            "id": 12
                        },
                        {
                            "rule": "optional",
                            "type": "Hub",
                            "name": "community",
                            "id": 13
                        }
                    ],
                    "oneofs": {
                        "source": [
                            10,
                            11,
                            12,
                            13
                        ]
                    },
                    "enums": [
                        {
                            "name": "Type",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "GROUP",
                                    "id": 1
                                },
                                {
                                    "name": "USER",
                                    "id": 2
                                },
                                {
                                    "name": "GAME",
                                    "id": 3
                                },
                                {
                                    "name": "COMMUNITY",
                                    "id": 4
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "Highlights",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "field",
                            "id": 1
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "highlights",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "IndexResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "index",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "type",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "version",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "created",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "DeleteResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "found",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "index",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "type",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "int64",
                            "name": "version",
                            "id": 5
                        }
                    ]
                },
                {
                    "name": "Suggestion",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "Type",
                            "name": "type",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "image",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "bytes",
                            "name": "DEPRECATED_proprietary",
                            "id": 5
                        },
                        {
                            "rule": "optional",
                            "type": "Any",
                            "name": "data",
                            "id": 6
                        }
                    ],
                    "enums": [
                        {
                            "name": "Type",
                            "values": [
                                {
                                    "name": "UNKNOWN",
                                    "id": 0
                                },
                                {
                                    "name": "GROUP",
                                    "id": 1
                                },
                                {
                                    "name": "USER",
                                    "id": 2
                                },
                                {
                                    "name": "GAME",
                                    "id": 3
                                },
                                {
                                    "name": "COMMUNITY",
                                    "id": 4
                                }
                            ]
                        }
                    ]
                },
                {
                    "name": "SuggestionRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "text",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "bool",
                            "name": "fuzzy",
                            "id": 2
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "context",
                            "id": 3
                        }
                    ]
                },
                {
                    "name": "SuggestionResponse",
                    "fields": [
                        {
                            "rule": "repeated",
                            "type": "Suggestion",
                            "name": "suggestions",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "SearchGroup",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "description",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 4
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 5
                        },
                        {
                            "rule": "repeated",
                            "type": "SearchChannel",
                            "name": "channels",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "SearchGame",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "short_name",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title_image",
                            "id": 4
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "background_images",
                            "id": 5
                        },
                        {
                            "rule": "repeated",
                            "type": "SearchChannel",
                            "name": "channels",
                            "id": 6
                        }
                    ]
                },
                {
                    "name": "SearchChannel",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "title",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "topic",
                            "id": 3
                        },
                        {
                            "rule": "repeated",
                            "type": "string",
                            "name": "tags",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "SearchUser",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "name",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "avatar_image",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "background_image",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "SipGetDeviceResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "private_id",
                            "id": 1
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "public_id",
                            "id": 2
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "realm",
                            "id": 3
                        },
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "password",
                            "id": 4
                        }
                    ]
                },
                {
                    "name": "SipGetConferenceResponse",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "string",
                            "name": "address",
                            "id": 1
                        }
                    ]
                },
                {
                    "name": "SipSetConferenceStatusRequest",
                    "fields": [
                        {
                            "rule": "optional",
                            "type": "ChannelMembershipRecord.VoiceStatus",
                            "name": "voice_status",
                            "id": 1
                        }
                    ]
                }
            ],
            "enums": [
                {
                    "name": "GroupMembershipTypeV1",
                    "values": [
                        {
                            "name": "UNKNOWN",
                            "id": 0
                        },
                        {
                            "name": "MEMBER",
                            "id": 1
                        },
                        {
                            "name": "GUEST",
                            "id": 2
                        }
                    ]
                },
                {
                    "name": "PrefNullValue",
                    "values": [
                        {
                            "name": "NULL_VALUE",
                            "id": 0
                        }
                    ]
                },
                {
                    "name": "CreateGroupErrorType",
                    "values": [
                        {
                            "name": "NONE",
                            "id": 0
                        },
                        {
                            "name": "NAME_INVALID",
                            "id": 1
                        },
                        {
                            "name": "NAME_TAKEN",
                            "id": 2
                        },
                        {
                            "name": "TITLE_IMAGE_INVALID",
                            "id": 3
                        },
                        {
                            "name": "BACKGROUND_IMAGE_INVALID",
                            "id": 4
                        },
                        {
                            "name": "SERVER_ERROR",
                            "id": 5
                        }
                    ]
                }
            ],
            "services": [
                {
                    "name": "HubService",
                    "options": {},
                    "rpc": {
                        "CreateHub": {
                            "request": "RPCHubCreateHubRequest",
                            "response": "RPCHubCreateHubResponse",
                            "options": {}
                        },
                        "EditHub": {
                            "request": "RPCHubEditHubRequest",
                            "response": "RPCHubEditHubResponse",
                            "options": {}
                        },
                        "DeleteHub": {
                            "request": "RPCHubDeleteHubRequest",
                            "response": "RPCHubDeleteHubResponse",
                            "options": {}
                        },
                        "GetHub": {
                            "request": "RPCHubGetHubRequest",
                            "response": "RPCHubGetHubResponse",
                            "options": {}
                        },
                        "GetAllHubs": {
                            "request": "RPCHubGetAllHubsRequest",
                            "response": "RPCHubGetAllHubsResponse",
                            "options": {}
                        },
                        "ValidateTitle": {
                            "request": "RPCHubValidateTitleRequest",
                            "response": "RPCHubValidateTitleResponse",
                            "options": {}
                        },
                        "AddMember": {
                            "request": "RPCHubAddMemberRequest",
                            "response": "RPCHubAddMemberResponse",
                            "options": {}
                        },
                        "EditMember": {
                            "request": "RPCHubEditMemberRequest",
                            "response": "RPCHubEditMemberResponse",
                            "options": {}
                        },
                        "GetMembers": {
                            "request": "RPCHubGetMembersRequest",
                            "response": "RPCHubGetMembersResponse",
                            "options": {}
                        },
                        "GetHubMember": {
                            "request": "RPCHubGetMemberRequest",
                            "response": "RPCHubGetMemberResponse",
                            "options": {}
                        },
                        "AddExternalMember": {
                            "request": "RPCHubAddExternalMemberRequest",
                            "response": "RPCHubAddExternalMemberResponse",
                            "options": {}
                        },
                        "EditExternalMember": {
                            "request": "RPCHubEditExternalMemberRequest",
                            "response": "RPCHubEditExternalMemberResponse",
                            "options": {}
                        },
                        "GetExternalMembers": {
                            "request": "RPCHubGetExternalMembersRequest",
                            "response": "RPCHubGetExternalMembersResponse",
                            "options": {}
                        },
                        "SendInvite": {
                            "request": "RPCHubSendInviteRequest",
                            "response": "RPCHubSendInviteResponse",
                            "options": {}
                        },
                        "RequestMembership": {
                            "request": "RPCHubRequestMembershipRequest",
                            "response": "RPCHubRequestMembershipResponse",
                            "options": {}
                        },
                        "JoinHub": {
                            "request": "RPCHubJoinHubRequest",
                            "response": "RPCHubJoinHubResponse",
                            "options": {}
                        },
                        "LeaveHub": {
                            "request": "RPCHubLeaveHubRequest",
                            "response": "RPCHubLeaveHubResponse",
                            "options": {}
                        },
                        "LinkHub": {
                            "request": "RPCHubLinkHubRequest",
                            "response": "RPCHubLinkHubResponse",
                            "options": {}
                        },
                        "UnlinkHub": {
                            "request": "RPCHubUnlinkHubRequest",
                            "response": "RPCHubUnlinkHubResponse",
                            "options": {}
                        },
                        "RegisterExternalUserID": {
                            "request": "RPCHubRegisterExternalUserIDRequest",
                            "response": "RPCHubRegisterExternalUserIDResponse",
                            "options": {}
                        }
                    }
                },
                {
                    "name": "ChannelService",
                    "options": {},
                    "rpc": {
                        "CreateChannel": {
                            "request": "RPCChannelCreateChannelRequest",
                            "response": "RPCChannelCreateChannelResponse",
                            "options": {}
                        },
                        "JoinChannel": {
                            "request": "ChannelUpdateRequest",
                            "response": "ChannelUpdateResponse",
                            "options": {}
                        },
                        "LeaveChannel": {
                            "request": "ChannelUpdateRequest",
                            "response": "ChannelUpdateResponse",
                            "options": {}
                        },
                        "AddUsersToHubChannel": {
                            "request": "RPCChannelAddUsersToHubChannelRequest",
                            "response": "RPCChannelAddUsersToHubChannelResponse",
                            "options": {}
                        },
                        "AddUserToHubChannels": {
                            "request": "RPCChannelAddUserToHubChannelsRequest",
                            "response": "RPCChannelAddUserToHubChannelsResponse",
                            "options": {}
                        },
                        "GetChannel": {
                            "request": "RPCChannelGetChannelRequest",
                            "response": "RPCChannelGetChannelResponse",
                            "options": {}
                        },
                        "JoinGameChannel": {
                            "request": "RPCChannelJoinGameChannelRequest",
                            "response": "RPCChannelJoinGameChannelResponse",
                            "options": {}
                        },
                        "CreateGroupChannel": {
                            "request": "RPCChannelCreateGroupChannelRequest",
                            "response": "RPCChannelCreateGroupChannelResponse",
                            "options": {}
                        },
                        "KickBan": {
                            "request": "RPCChannelKickBanRequest",
                            "response": "RPCChannelKickBanResponse",
                            "options": {}
                        },
                        "UnBan": {
                            "request": "RPCChannelUnBanRequest",
                            "response": "RPCChannelUnBanResponse",
                            "options": {}
                        },
                        "GetGame": {
                            "request": "google.protobuf.StringValue",
                            "response": "GameResponse",
                            "options": {}
                        },
                        "GetGames": {
                            "request": "RPCGameGetGamesRequest",
                            "response": "RPCGameGetGamesResponse",
                            "options": {}
                        },
                        "GetGameChannels": {
                            "request": "RPCGameGetGameChannelsRequest",
                            "response": "RPCGameGetGameChannelsResponse",
                            "options": {}
                        },
                        "GetChannelUsers": {
                            "request": "RPCChannelGetChannelUsersRequest",
                            "response": "RPCChannelGetChannelUsersResponse",
                            "options": {}
                        },
                        "UnhideChannelIfNeeded": {
                            "request": "RPCChannelUnhideChannelRequest",
                            "response": "RPCChannelUnhideChannelResponse",
                            "options": {}
                        },
                        "InviteMember": {
                            "request": "RPCChannelInviteMemberRequest",
                            "response": "RPCChannelInviteMemberResponse",
                            "options": {}
                        },
                        "EditChannel": {
                            "request": "RPCEditChannelRequest",
                            "response": "RPCEditChannelResponse",
                            "options": {}
                        },
                        "DeleteChannel": {
                            "request": "RPCDeleteChannelRequest",
                            "response": "RPCDeleteChannelResponse",
                            "options": {}
                        },
                        "CanJoinChannel": {
                            "request": "RPCJoinChannelInfoRequest",
                            "response": "RPCJoinChannelInfoResponse",
                            "options": {}
                        },
                        "JoinProprietaryChannels": {
                            "request": "RPCJoinProprietaryChannelsRequest",
                            "response": "RPCJoinProprietaryChannelsResponse",
                            "options": {}
                        },
                        "GetExtendedChannelInfo": {
                            "request": "RPCChannelGetChannelRequest",
                            "response": "RPCExtendedChannelInfoResponse",
                            "options": {}
                        }
                    }
                },
                {
                    "name": "PushService",
                    "options": {},
                    "rpc": {
                        "Register": {
                            "request": "PushRegisterRequest",
                            "response": "PushRegisterResponse",
                            "options": {}
                        },
                        "SendMessage": {
                            "request": "PushMessageRequest",
                            "response": "PushMessageResponse",
                            "options": {}
                        }
                    }
                },
                {
                    "name": "SearchService",
                    "options": {},
                    "rpc": {
                        "Search": {
                            "request": "SearchRequest",
                            "response": "SearchResponse",
                            "options": {}
                        },
                        "IndexGroup": {
                            "request": "Group",
                            "response": "IndexResponse",
                            "options": {}
                        },
                        "DeleteGroup": {
                            "request": "Group",
                            "response": "DeleteResponse",
                            "options": {}
                        },
                        "IndexUser": {
                            "request": "User",
                            "response": "IndexResponse",
                            "options": {}
                        },
                        "DeleteUser": {
                            "request": "User",
                            "response": "DeleteResponse",
                            "options": {}
                        },
                        "GetSuggestions": {
                            "request": "SuggestionRequest",
                            "response": "SuggestionResponse",
                            "options": {}
                        }
                    }
                }
            ]
        },
        {
            "name": "google",
            "fields": [],
            "messages": [
                {
                    "name": "protobuf",
                    "fields": [],
                    "options": {
                        "java_generate_equals_and_hash": true,
                        "java_multiple_files": true,
                        "java_outer_classname": "WrappersProto",
                        "java_package": "com.google.protobuf",
                        "csharp_namespace": "Google.Protobuf.WellKnownTypes",
                        "objc_class_prefix": "GPB"
                    },
                    "messages": [
                        {
                            "name": "DoubleValue",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "double",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "FloatValue",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "float",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "Int64Value",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "int64",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "UInt64Value",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "uint64",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "Int32Value",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "int32",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "UInt32Value",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "uint32",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "BoolValue",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "bool",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "StringValue",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "string",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        },
                        {
                            "name": "BytesValue",
                            "fields": [
                                {
                                    "rule": "optional",
                                    "type": "bytes",
                                    "name": "value",
                                    "id": 1
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    ]
}).build();
