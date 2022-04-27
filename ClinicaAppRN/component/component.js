import React from "react"
import {StyleSheet, Image, Text, View, ImageBackground} from "react-native"

export default function Appointment() {
    return (
        <View style={styles.Appointment}>
            <View style={styles.Group976}>
                <View style={styles.Frame25}>
                    <Image
                        style={styles.HamMenu}
                        source={{
                            uri: "https://firebasestorage.googleapis.com/v0/b/unify-bc2ad.appspot.com/o/emkrzwsaxbf-1%3A718?alt=media&token=29a99c55-b32b-47cf-a147-c8b841b03f14",
                        }}
                    />
                    <Text style={styles.Txt534}>Apointment</Text>
                    <Image
                        style={styles.HamMenu1}
                        source={{
                            uri: "https://firebasestorage.googleapis.com/v0/b/unify-bc2ad.appspot.com/o/emkrzwsaxbf-1%3A663?alt=media&token=d54f54e8-16fb-45ce-9eef-6bb688afd0ea",
                        }}
                    />
                </View>
                <View style={styles.Frame16}>
                    <View style={styles.Group310}>
                        <View style={styles.Group191}>
                            <View style={styles.Frame17}>
                                <Text style={styles.Txt522}>Dentist at White Hospital</Text>
                            </View>
                            <View style={styles.Group728}>
                                <View style={styles.Ellipse2}/>
                                <View style={styles.Group1093}>
                                    <View style={styles.Group1093}>
                                        <View style={styles.Ellipse1}/>
                                        <View style={styles.Ellipse3}/>
                                    </View>
                                    <View style={styles.Ellipse1}/>
                                </View>
                            </View>
                            <View style={styles.Group1093}>
                                <View style={styles.Group1093}>
                                    <View style={styles.Ellipse1}/>
                                    <View style={styles.Ellipse3}/>
                                </View>
                                <View style={styles.Ellipse1}/>
                            </View>
                        </View>
                    </View>
                    <Image
                        style={styles.Vector1}
                        source={{
                            uri: "https://firebasestorage.googleapis.com/v0/b/unify-bc2ad.appspot.com/o/emkrzwsaxbf-1%3A669?alt=media&token=fcfb12b5-c0da-4216-ad7b-636aab416b53",
                        }}
                    />
                </View>
                <Text style={styles.Txt1071}>Dr. Yumi Nickerson</Text>
                <View style={styles.Frame29}>
                    <View style={styles.Group291}>
                        <Text style={styles.Txt843}>Date</Text>
                        <Text style={styles.Txt432}>Other</Text>
                    </View>
                    <View style={styles.Group15}>
                        <View style={styles.Frame19}>
                            <Text style={styles.Txt097}>Jan</Text>
                            <Text style={styles.Txt835}>18</Text>
                        </View>
                        <View style={styles.Frame20}>
                            <Text style={styles.Txt097}>Jan</Text>
                            <Text style={styles.Txt835}>19</Text>
                        </View>
                        <View style={styles.Frame21}>
                            <Text style={styles.Txt855}>Jan</Text>
                            <Text style={styles.Txt788}>20</Text>
                        </View>
                        <View style={styles.Frame20}>
                            <Text style={styles.Txt097}>Jan</Text>
                            <Text style={styles.Txt835}>21</Text>
                        </View>
                        <View style={styles.Frame19}>
                            <Text style={styles.Txt097}>Jan</Text>
                            <Text style={styles.Txt835}>22</Text>
                        </View>
                        <View style={styles.Frame24}>
                            <Text style={styles.Txt097}>Jan</Text>
                            <Text style={styles.Txt835}>23</Text>
                        </View>
                    </View>
                </View>
                <Text style={styles.Txt224}>Schedule</Text>
                <Text style={styles.Txt763}>Your Complaint</Text>
                <View style={styles.Text}>
                    <Text style={styles.Txt222}>Type your complaint here...</Text>
                </View>
                <View style={styles.Frame1}>
                    <Text style={styles.Txt283}>Next</Text>
                </View>
            </View>
            <Image
                style={styles.Illustration}
                source={{
                    uri: "https://firebasestorage.googleapis.com/v0/b/unify-bc2ad.appspot.com/o/emkrzwsaxbf-1%3A680?alt=media&token=c3a200bb-6bcc-4e1c-a956-70de24976151",
                }}
            />
            <View style={styles.Frame30}>
                <View style={styles.Frame28}>
                    <View style={styles.Group17}>
                        <Text style={styles.Txt687}>Start</Text>
                        <Image
                            style={styles.ChevronDown}
                            source={{
                                uri: "https://firebasestorage.googleapis.com/v0/b/unify-bc2ad.appspot.com/o/emkrzwsaxbf-1%3A746?alt=media&token=4066bec9-ac6b-4da4-a402-c822714149e1",
                            }}
                        />
                    </View>
                    <View style={styles.Group18}>
                        <Text style={styles.Txt911}>End</Text>
                        <Image
                            style={styles.ChevronDown}
                            source={{
                                uri: "https://firebasestorage.googleapis.com/v0/b/unify-bc2ad.appspot.com/o/emkrzwsaxbf-1%3A750?alt=media&token=e2cb740e-0b2c-4c22-8fdb-c43070297420",
                            }}
                        />
                    </View>
                </View>
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    Appointment: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "flex-start",
        alignItems: "flex-start",
        position: "relative",
        paddingTop: 12,
        paddingBottom: 59,
        paddingLeft: 8,
        paddingRight: 7,
        backgroundColor: "rgba(255, 255, 255, 1)",
        width: 375,
        height: 812,
    },
    Group976: {
        display: "flex",
        flexDirection: "column",
    },
    Frame25: {
        display: "flex",
        flexDirection: "row",
        justifyContent: "flex-start",
        alignItems: "flex-start",
        paddingTop: 30,
        paddingBottom: 23,
        paddingLeft: 14,
        paddingRight: 15,
        marginBottom: 26,
    },
    HamMenu: {
        width: 36,
        height: 36,
        marginRight: 71,
    },
    Txt534: {
        fontSize: 20,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 28,
        color: "rgba(66,66,66,1)",
        marginRight: 69,
        textTransform: "capitalize",
    },
    HamMenu1: {
        width: 36,
        height: 36,
    },

    Frame16: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "flex-start",
        alignItems: "flex-start",
        position: "relative",
        borderRadius: 16,
        shadowColor: "rgba(60,60,60,0.1)",
        elevation: 3,
        shadowOffset: {width: 0, height: 4},
    },
    Group310: {
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        position: "absolute",
        top: 25,
        none: "0px",
        paddingTop: 76,
        paddingBottom: 12,
        paddingLeft: 0,
        paddingRight: 136,
        borderRadius: 16,
        backgroundColor: "rgba(226,241,255,1)",
        width: 327,
        height: 197,
    },
    Group191: {
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
    },
    Frame17: {
        display: "flex",
        flexDirection: "row",
        justifyContent: "center",
        alignItems: "center",
        marginBottom: 10,
    },
    Txt522: {
        fontSize: 14,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "500",
        lineHeight: 24,
        color: "rgba(148,148,148,1)",
    },

    Group728: {
        display: "flex",
        flexDirection: "column",
        alignItems: "flex-end",
    },
    Ellipse2: {
        backgroundColor: "rgba(0,133,255,1)",
        width: 19,
        height: 19,
        borderRadius: 9.5,
        opacity: 0.1,
        marginBottom: 3,
    },
  
    Ellipse1: {
        backgroundColor: "rgba(0,133,255,1)",
        width: 6,
        height: 6,
        borderRadius: 3,
        opacity: 0.1,
    },
    Ellipse3: {
        backgroundColor: "rgba(0,133,255,1)",
        width: 11,
        height: 11,
        borderRadius: 5.5,
        opacity: 0.1,
    },

    Vector1: {
        position: "absolute",
        bottom: 15,
        left: 5034122.5,
        width: 341,
        height: 106,
    },

    Txt1071: {
        fontSize: 24,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 32,
        color: "rgba(66,66,66,1)",
        width: 215,
        height: 32,
        marginBottom: 146,
        textTransform: "capitalize",
    },
    Frame29: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "flex-start",
        alignItems: "flex-start",
        paddingTop: 4,
        paddingBottom: 12,
        paddingLeft: 6,
        paddingRight: 20,
        marginBottom: 3,
    },
    Group291: {
        display: "flex",
        flexDirection: "row",
        marginBottom: 7,
    },
    Txt843: {
        fontSize: 16,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 24,
        color: "rgba(0,0,0,1)",
        width: 39,
        height: 24,
        marginRight: 243,
        textTransform: "capitalize",
    },
    Txt432: {
        fontSize: 14,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "500",
        lineHeight: 24,
        color: "rgba(103,152,225,1)",
        width: 39,
        height: 24,
    },

    Group15: {
        display: "flex",
        flexDirection: "row",
        paddingTop: 0,
        paddingBottom: 0,
        paddingLeft: 0,
        paddingRight: 0.76,
    },
    Frame19: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
        position: "relative",
        paddingTop: 3,
        paddingBottom: 3,
        paddingLeft: 11,
        paddingRight: 11,
        marginRight: 12,
        borderRadius: 12,
        backgroundColor: "rgba(249,249,249,1)",
        width: 44.38,
        height: 54.72,
    },
    Txt097: {
        position: "absolute",
        top: 27,
        left: 12,
        fontSize: 12,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "400",
        lineHeight: 24,
        color: "rgba(186,186,186,1)",
        width: 20,
        height: 24,
    },
    Txt835: {
        fontSize: 14,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 24,
        color: "rgba(186,186,186,1)",
    },

    Frame20: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
        position: "relative",
        paddingTop: 3,
        paddingBottom: 3,
        paddingLeft: 11,
        paddingRight: 11,
        marginRight: 13,
        borderRadius: 12,
        backgroundColor: "rgba(249,249,249,1)",
        width: 44.38,
        height: 54.72,
    },
   

    Frame21: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
        position: "relative",
        paddingTop: 3,
        paddingBottom: 3,
        paddingLeft: 11,
        paddingRight: 11,
        marginRight: 12,
        borderRadius: 12,
        backgroundColor: "rgba(103,152,225,1)",
        shadowColor: "rgba(172,215,255,0.4)",
        elevation: 2,
        shadowOffset: {width: 0, height: 2},
        width: 44.38,
        height: 54.72,
    },
    Txt855: {
        position: "absolute",
        top: 27,
        left: 12,
        fontSize: 12,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "400",
        lineHeight: 24,
        color: "rgba(255, 255, 255, 1)",
        width: 20,
        height: 24,
    },
    Txt788: {
        fontSize: 14,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 24,
        color: "rgba(255, 255, 255, 1)",
    },

    Frame24: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
        position: "relative",
        paddingTop: 3,
        paddingBottom: 3,
        paddingLeft: 11,
        paddingRight: 11,
        borderRadius: 12,
        backgroundColor: "rgba(249,249,249,1)",
        width: 44.38,
        height: 54.72,
    },

    Txt224: {
        fontSize: 16,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 24,
        color: "rgba(0,0,0,1)",
        width: 74,
        height: 24,
        marginBottom: 73,
        textTransform: "capitalize",
    },
    Txt763: {
        fontSize: 16,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 24,
        color: "rgba(0,0,0,1)",
        width: 128,
        height: 26,
        marginBottom: 7,
        textTransform: "capitalize",
    },
    Text: {
        paddingTop: 15,
        paddingBottom: 77.18,
        paddingLeft: 16,
        paddingRight: 116,
        marginBottom: 21,
        borderRadius: 12,
        backgroundColor: "rgba(255, 255, 255, 1)",
        borderWidth: 1,
        borderStyle: "solid",
        borderColor: "rgba(230,230,230,1)",
        width: 355,
        height: 119.18,
    },
    Txt222: {
        fontSize: 14,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "500",
        lineHeight: 24,
        color: "rgba(148,148,148,1)",
        width: 221,
        height: 25,
    },

    Frame1: {
        display: "flex",
        flexDirection: "row",
        justifyContent: "center",
        alignItems: "center",
        paddingTop: 13,
        paddingBottom: 13,
        paddingLeft: 15,
        paddingRight: 15,
        borderRadius: 8,
        backgroundColor: "rgba(103,152,225,1)",
        width: 327,
        height: 51,
    },
    Txt283: {
        fontSize: 16,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "700",
        lineHeight: 24,
        color: "rgba(255, 255, 255, 1)",
        textAlign: "center",
        justifyContent: "center",
    },

    Illustration: {
        position: "absolute",
        top: 109,
        left: 206,
        width: 161,
        height: 193,
    },
    Frame30: {
        display: "flex",
        flexDirection: "column",
        justifyContent: "flex-start",
        alignItems: "flex-start",
        position: "absolute",
        top: 433,
        left: 9,
        paddingTop: 2,
        paddingBottom: 5,
        paddingLeft: 2,
        paddingRight: 12,
        width: 358,
        height: 95,
    },
    Frame28: {
        display: "flex",
        flexDirection: "row",
        justifyContent: "flex-start",
        alignItems: "flex-start",
        paddingTop: 25,
        paddingBottom: 8,
        paddingLeft: 2,
        paddingRight: 8,
    },
    Group17: {
        display: "flex",
        flexDirection: "row",
        paddingTop: 12,
        paddingBottom: 12.81,
        paddingLeft: 15,
        paddingRight: 15.33,
        marginRight: 16,
        borderRadius: 12,
        backgroundColor: "rgba(255, 255, 255, 1)",
        borderWidth: 1,
        borderStyle: "solid",
        borderColor: "rgba(230,230,230,1)",
    },
    Txt687: {
        fontSize: 16,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "500",
        lineHeight: 24,
        color: "rgba(148,148,148,1)",
        width: 37,
        height: 24,
        marginRight: 68,
    },
  

    Group18: {
        display: "flex",
        flexDirection: "row",
        paddingTop: 12,
        paddingBottom: 12.81,
        paddingLeft: 16,
        paddingRight: 15.33,
        borderRadius: 12,
        backgroundColor: "rgba(255, 255, 255, 1)",
        borderWidth: 1,
        borderStyle: "solid",
        borderColor: "rgba(230,230,230,1)",
    },
    Txt911: {
        fontSize: 16,
        fontFamily: "Raleway, sans-serif",
        fontWeight: "500",
        lineHeight: 24,
        color: "rgba(148,148,148,1)",
        width: 31,
        height: 24,
        marginRight: 73,
    },
    ChevronDown: {
        width: 20.17,
        height: 19.54,
    },
})
