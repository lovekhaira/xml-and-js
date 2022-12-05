const users = [
    { username: `user1`, email: `user1@email.com` },
    { username: `user2`, email: `user2@email.com` }
    ];
    
    const getUser = (username) =>
        new Promise((resolve) => {
        for(let user of users){
            if(user.username === username){
                resolve(user);
            }
        }
    });
    
    const getUsers = (userNames) => {
        const users = [];
        userNames.forEach(name => getUser(name).then((user) => users.push(user)));
        return users;
    };
    
    const main = async () => {
        const userNames = [`user1`, `user2`];
        const users = await getUsers(userNames);
        console.log(users);
    };
    
    main();