import com.intuit.karate.junit5.Karate;

class FeaturesTest {

    @Karate.Test
    Karate testUsers() {
        return Karate.run(
            "features/get-users",
            "features/get-users-config",
            "features/get-users-background",
            "features/create-post"
        ).relativeTo(getClass());
    }
}