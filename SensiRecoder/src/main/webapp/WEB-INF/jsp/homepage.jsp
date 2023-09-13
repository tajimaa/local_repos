<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            text-align: center;
            margin: 20px;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ccc;
        }
        select, input[type="number"] {
            padding: 5px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        c\:if {
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
    <form action="loginpage" method="get">
        <input type="submit" value="login">
    </form>
    <form action="registpage" method="get">
        <input type="submit" value="createUser">
    </form>
    <h1>最初のページだよ</h1>
    <br>
    <form action="calcCommand" method="get">
        <table>
            <tr>
                <th>ゲーム</th>
                <th>感度</th>
                <th>dpi</th>
            </tr>
            <tr>
                <td><select name="game">
                    <option value="1v1.LOL">1v1.LOL</option>
						<option value="7_Days_to_Die">7_Days_to_Die</option>
						<option value="Alliance_of_Valiant_Arms_(AVA)">Alliance_of_Valiant_Arms_(AVA)</option>
						<option value="Apex_Aim_Trainer">Apex_Aim_Trainer</option>
						<option value="Apex_Legends">Apex_Legends</option>
						<option value="ARK_Survival_Evolved">ARK_Survival_Evolved</option>
						<option value="Arma_3">Arma_3</option>
						<option value="Back_4_Blood">Back_4_Blood</option>
						<option value="Banana_Shooter">Banana_Shooter</option>
						<option value="Battalion_1944">Battalion_1944</option>
						<option value="BattleBit_Remastered">BattleBit_Remastered</option>
						<option value="Battlefield_2042">Battlefield_2042</option>
						<option value="Battlefield_1">Battlefield_1</option>
						<option value="Battlefield_4">Battlefield_4</option>
						<option value="Battlefield_V">Battlefield_V</option>
						<option value="Black_Desert_Online_(黒い砂漠)">Black_Desert_Online_(黒い砂漠)</option>
						<option value="Block_N_Load">Block_N_Load</option>
						<option value="Bloodhunt_(Vampire_The_Masquerade)">Bloodhunt_(Vampire_The_Masquerade)</option>
						<option value="Borderlands_2">Borderlands_2</option>
						<option value="Borderlands_3">Borderlands_3</option>
						<option value="Boundary">Boundary</option>
						<option value="Call_of_Duty_BO4">Call_of_Duty_BO4</option>
						<option value="Call_of_Duty_BOCW">Call_of_Duty_BOCW</option>
						<option value="Call_of_Duty_Modern_Warfare_II">Call_of_Duty_Modern_Warfare_II</option>
						<option value="Call_of_Duty_Vanguard">Call_of_Duty_Vanguard</option>
						<option value="Counter-Strike_Global_Offensive_(CSGO)">Counter-Strike_Global_Offensive_(CSGO)</option>
						<option value="Cyberpunk_2077">Cyberpunk_2077</option>
						<option value="Dark_and_Darker">Dark_and_Darker</option>
						<option value="Unturned">Unturned</option>
						<option value="Valheim">Valheim</option>
						<option value="Valorant">Valorant</option>
						<option value="Warframe">Warframe</option>
						<option value="Warlander">Warlander</option>
						<option value="War_Thunder">War_Thunder</option>
						<option value="World_War_3">World_War_3</option>
                </select></td>
                <td><input type="number" step="0.001" name="sensi"></td>
                <td><input type="number" name="dpi"></td>
            </tr>
        </table>
        <input type="submit" value="start"> <input type="submit"
            value="save">
    </form>
    <c:if test="${!empty data}">
        cm180: ${data.cm180}
        cm360: ${data.cm360}
        ${bean.userName }
    </c:if>
</body>
</html>