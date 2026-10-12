import com.intuit.karate.junit5.Karate;

class FeaturesTest {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("features/get-users")
                .relativeTo(getClass());
    }
}